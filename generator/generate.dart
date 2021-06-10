import 'dart:io';

const tdApiDir = 'lib/src/tdapi';
final tdApiFile = File('$tdApiDir/tdapi.dart');
final functionsDir = Directory("$tdApiDir/functions");
final objectsDir = Directory("$tdApiDir/objects");
const builtInTypes = [
  'int',
  'int32',
  'int53',
  'int64',
  'long',
  'double',
  'string',
  'bytes',
  'Bool'
];
const dartTypes = ['int', 'double', 'String', 'bool'];

// regex patterns
final sectionRegx = RegExp(r'---(\w+)---');
final classRegx = RegExp(r'^//@class (\w+) @description (.*)');
final docsRegx =
    RegExp(r'//((-)|@)(description)?([\w -.,:;={}\?\/\(\)"]+)(@?)(.*)?');
final argsRegx = RegExp(r'(\w+):([\w<>]+)');
final fieldsRegx = RegExp(r'^(\w+) (.*)?= (\w+);$');

final List<TlObject> _objects = [];

class DartTdDocumentationGenerator {
  String schemePath = 'data/td_api.tl';
  int skipLines = 13;
  String mainPart = 'part of \'../tdapi.dart\';';

  /// Main generating function
  void generate() {
    // read td_api scheme
    var schemeData = readFile(schemePath);

    // skip built-in types
    schemeData = schemeData.sublist(skipLines);

    // extract data
    dispatchSchemeData(schemeData);

    fetchRelevant();

    validationVariables();

    writeToFile();
  }

  /// dispatching types and functions from data
  /// extract variables and descriptions and store.
  /// [lines] list of scheme lines
  void dispatchSchemeData(List<String> lines) {
    var classDescription = '';
    var variablesDescriptions = <String>[];
    var section = 'types';
    // reading data line by line and analyze them.
    for (final line in lines) {
      // check if we are in types section or functions section.
      if (sectionRegx.hasMatch(line)) {
        section = sectionRegx.firstMatch(line)!.group(1) ?? '';
        continue;
      }

      // check for class type description line
      if (classRegx.hasMatch(line)) {
        final classData = classRegx.firstMatch(line)!;
        final className = classData.group(1)!;
        final classDes = classData.group(2) ?? '';
        _objects.add(TlObject(className, classDes, 'classes'));
        continue;
      }

      // check documentation line.
      if (docsRegx.hasMatch(line)) {
        final docData = docsRegx.firstMatch(line)!;

        // if line start with '//-', this line is continuation of last line.
        final continuation = (docData.group(2) == null) ? false : true;

        // starting with '//@description' determines a description line.
        final isDescription = docData.group(3) == 'description' ? true : false;

        // rest of information from this line, after description state.
        final docs = docData.group(4)!.trim();

        // variables description start with '@VARIABLE_NAME', @ is a sign of extra descriptions.
        final hasExtra = docData.group(5) == '@' ? true : false;

        // rest of information from this line, after sign of extra descriptions.
        final extraData = docData.group(6);

        if (isDescription) {
          classDescription = docs;
        } else if (continuation) {
          // if this line is continuation of last line, must be added to last variable description or class description
          // always class description is the first thing that defined. so if there are variables information so class description is finished.
          if (variablesDescriptions.isNotEmpty) {
            variablesDescriptions[variablesDescriptions.length - 1] +=
                '. $docs';
          } else {
            classDescription += '. $docs';
          }
        } else {
          variablesDescriptions.add(docs);
        }
        if (hasExtra) {
          // where the '@' is the variables descriptions sign, splitting extra information by this sign separates descriptions.
          variablesDescriptions.addAll(extraData!.split('@'));
        }
        continue;
      }

      // check for the last line of
      if (fieldsRegx.hasMatch(line)) {
        final classData = fieldsRegx.firstMatch(line)!;

        final className = classData.group(1)!;
        final classArgs = classData.group(2);
        final classReturnType = classData.group(3);
        Map<String, String> args = {}; // ignore: omit_local_variable_types
        if (classArgs != null) {
          // ignore: prefer_for_elements_to_map_fromIterable
          for (final arg in classArgs.trim().split(' ')) {
            final kv = arg.split(':');
            final name = kv[0];
            final type = kv[1];
            args[name] = type;
          }
        }

        // store class data and reset class and variables descriptions.
        _objects.add(TlObject(
            upperFirstChar(className), classDescription, section,
            variablesDescriptions: variablesDescriptions,
            argsData: args,
            returnType: classReturnType));
        classDescription = '';
        variablesDescriptions = [];
      }
    }
  }

  /// find relevant classes like those classes have parent class
  /// and find result classes of function classes
  void fetchRelevant() {
    _objects.where((TlObject obj) => obj.isParent).forEach((TlObject cls) {
      final children = _objects.where((TlObject element) =>
          cls.name == element.returnType && element.hasParent);
      children.forEach((TlObject child) {
        child.relevantObjects.add(cls.name);
        cls.relevantObjects.add(child.name);
      });
    });
    _objects.where((TlObject obj) => obj.isFunction).forEach((TlObject func) {
      final results =
          _objects.where((TlObject element) => func.returnType == element.name);
      results.forEach((TlObject result) {
        if (result.isParent) {
          func.relevantObjects.addAll(result.relevantObjects);
        } else {
          func.relevantObjects.add(result.name);
        }
      });
    });
  }

  /// check variables by arguments
  void validationVariables() {
    _objects.forEach((obj) => obj.makeVariablesList());
  }

  /// final step
  /// write data to file
  void writeToFile() {
    tdApiFile.writeAsStringSync(
        'import \'dart:convert\' show json;\n\npart \'object.dart\';\npart \'function.dart\';\npart \'convertor.dart\';\n\n');
    if (functionsDir.existsSync()) functionsDir.deleteSync(recursive: true);
    functionsDir.createSync(recursive: true);

    if (objectsDir.existsSync()) objectsDir.deleteSync(recursive: true);
    objectsDir.createSync(recursive: true);

    final temple = File('generator/main_class.tmpl').readAsStringSync();
    for (final obj in _objects) {
      final snakeName = snakeCase(obj.name);
      final folderName = sectionFolder(obj.type);
      var finalDir = '$tdApiDir/$folderName/$snakeName.dart';

      var parent = 'TdObject';
      final variables = <String>[];
      final arguments = <String>[];
      var hasFactory = true;
      var fromJsonFields = <String>[];
      final toJsonFields = <String>[];
      var writeMode = FileMode.write;
      var objectPart = mainPart;
      if (obj.isParent) {
        fromJsonFields.add('switch(json["@type"]) {');
        obj.relevantObjects.forEach((String relevantObject) {
          fromJsonFields.add('  case $relevantObject.CONSTRUCTOR:');
          fromJsonFields.add('    return $relevantObject.fromJson(json);');
        });
        fromJsonFields.add('  default:');
        fromJsonFields.add('    return ${obj.name}();');
        fromJsonFields.add('}');
      } else {
        fromJsonFields.add('return ${obj.className}(');
        toJsonFields.add('\"@type\": CONSTRUCTOR,');
        obj.variables.forEach((variable) {
          if (variable.isNullable) {
            variables.add(
                '/// [${variable.argName}] ${variable.description}\n  ${variable.type}? ${variable.argName};');
            arguments.add('this.${variable.argName}');
          } else {
            variables.add(
                '/// [${variable.argName}] ${variable.description}\n  ${variable.type} ${variable.argName};');
            arguments.add('required this.${variable.argName}');
          }
          fromJsonFields.add('  ${variable.argName}: ${variable.read},');
          toJsonFields.add('\n      "${variable.name}": ${variable.write},');
        });
        if (obj.isFunction) {
          parent = 'TdFunction';
          variables.add('/// callback sign\n  dynamic extra;');
          arguments.add('this.extra');
          fromJsonFields.add('  extra: json[\'@extra\'],');
          toJsonFields.add('\n      "@extra": this.extra,');
        } else {
          if (_objects.any((func) =>
              func.isFunction && func.relevantObjects.contains(obj.name))) {
            variables.add('/// callback sign\n  @override\n  dynamic extra;');
            arguments.add('this.extra');
            fromJsonFields.add('  extra: json[\'@extra\'],');
          }
          if (obj.hasParent) {
            objectPart = '';
            parent = obj.returnType!;
            writeMode = FileMode.append;
            finalDir = '$tdApiDir/$folderName/${snakeCase(parent)}.dart';
          }
        }
        fromJsonFields.add(');');
      }
      if (!obj.hasParent) {
        tdApiFile.writeAsStringSync('part \'$folderName/$snakeName.dart\';\n',
            mode: FileMode.append); // todo: Even Functions?
      }

      final objFile = File(finalDir);
      final stringObj = temple
          //.replaceAll('PART', '')
          .replaceAll('PART', objectPart)
          .replaceAll('CLASS_NAME', obj.className)
          .replaceAll('PARENT', parent)
          .replaceAll('VARIABLES', variables.join('\n\n  '))
          .replaceAll('DESCRIPTION', obj.description
//                  + (obj.isParent
//                      ? ''
//                      : (obj.variables.isNotEmpty
//                          ? '. \n  /// ${obj.variables.map((o) => '[${o.argName}] ${o.description}').join('. \n  /// ')}'
//                          : ''))
              )
          .replaceAll(
              'ARGUMENTS',
              arguments.isEmpty
                  ? ''
                  : '\n      {${arguments.join(',\n      ')}}')
          .replaceAll(
              'DOC',
              obj.isParent
                  ? ('a ${obj.name} return type can be :\n  /// * ' +
                      obj.relevantObjects.join('\n  /// * '))
                  : 'Parse from a json')
          .replaceAll('FACTORY', hasFactory ? 'factory ' : '')
          .replaceAll(
              'FROM_JSON',
              fromJsonFields.isEmpty
                  ? ';'
                  : '{\n    ${fromJsonFields.join('\n    ')}\n  }')
          .replaceAll('TO_JSON', toJsonFields.join(''))
          .replaceAll('ID', lowerFirstChar(obj.name));

      objFile.writeAsStringSync(stringObj, mode: writeMode);
      //tdApiFile.writeAsStringSync(stringObj, mode: FileMode.append);
    }

    tdApiFile.writeAsStringSync(
        '\n\nfinal Map<String, TdObject Function(Map<String, dynamic>)> allObjects = {',
        mode: FileMode.append);
    //_objects.where((obj) => !obj.hasParent && _objects.any((func) => func.relevantObjects.contains(obj.name))).forEach((obj){
    _objects.where((obj) => !obj.isFunction).forEach((obj) {
      tdApiFile.writeAsStringSync(
          '\n    \'${lowerFirstChar(obj.name)}\': (d) => ${obj.className}.fromJson(d),',
          mode: FileMode.append);
    });
    tdApiFile.writeAsStringSync('\n};\n', mode: FileMode.append);
  }
}

void main() {
  return DartTdDocumentationGenerator().generate();
}

List<String> readFile(String path) => File(path).readAsLinesSync();

String snakeCase(String string) {
  string = string.replaceAllMapped(
      RegExp(r'(.)([A-Z][a-z]+)'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  string = string.replaceAllMapped(
      RegExp(r'([a-z0-9])([A-Z])'),
      (Match match) => match
          .groups(List.generate(match.groupCount, (int index) => index + 1))
          .join('_'));
  return string.toLowerCase();
}

String camelCase(String string) {
  return string.split('_').map((str) => upperFirstChar(str)).join();
}

String upperFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toUpperCase());
}

String lowerFirstChar(String string) {
  return string.replaceFirst(string[0], string[0].toLowerCase());
}

String sectionFolder(String type) {
  switch (type) {
    case 'functions':
      return 'functions';
    case 'classes':
    case 'types':
    default:
      return 'objects';
  }
}

class TlObject {
  final String name;
  final String description;
  final String type;
  List<String> variablesDescriptions = [];
  Map<String, String> argsData = {};
  String? returnType;
  List<String> relevantObjects = [];
  List<TlObjectArg> variables = [];

  TlObject(this.name, this.description, this.type,
      {variablesDescriptions,
      argsData,
      this.returnType,
      relevantObjects,
      variables}) {
    if (variablesDescriptions != null) {
      this.variablesDescriptions = variablesDescriptions;
    }
    if (argsData != null) {
      this.argsData = argsData;
    }
    if (relevantObjects != null) {
      this.relevantObjects = relevantObjects;
    }
    if (variables != null) {
      this.variables = variables;
    }
  }

  bool get isFunction => type == 'functions';

  // bool get isParent => !isFunction && returnType == null;
  bool get isParent => type == 'classes';

  // type == 'types' ok?
  bool get hasParent => !isFunction && name != returnType && !isParent;

  String get className => name == 'Error' ? 'TdError' : name;

  void makeVariablesList() {
    variablesDescriptions.forEach((variableData) {
      final splitVariableData = variableData.split(' ');
      final variableName = splitVariableData[0] == 'param_description'
          ? 'description'
          : splitVariableData[0];
      final variableDescription = splitVariableData.sublist(1).join(' ');
      final variableType = argsData[variableName]!;
      final obj = TlObjectArg(variableName, variableDescription.trim(),
          tlType: variableType);
      variables.add(obj);
    });
  }
}

class TlObjectArg {
  String name;
  String description;
  late String argName;
  late String type;
  late String read;
  late String write;

  TlObjectArg(this.name, this.description,
      {String? argName, required String tlType}) {
    this.argName = argName ?? lowerFirstChar(camelCase(this.name));
    this.type = getType(tlType);
    if (this.type == 'Error') this.type = 'TdError';
    this.read = getRead(this.name, this.type,
        isInt64: tlType == 'int64', isNullable: this.isNullable);
    this.write = getWrite(this.argName, this.type, isNullable: this.isNullable);
  }

  bool get isNullable => description.contains('null');

  static String getType(type, {String prefix = 'TYPE'}) {
    String dartType;
    if (builtInTypes.contains(type)) {
      dartType = getBuiltInDartType(type);
    } else if (type.startsWith('vector')) {
      final subType = type.substring(7, type.length - 1);
      dartType = getType(subType, prefix: 'List<TYPE>');
    } else {
      type = upperFirstChar(type);
      //if (_objects.any((TlObject obj) => obj.isParent && obj.name == type))
      //  dartType = 'TdObject';
      //else
      //  dartType = type;
      dartType = type;
    }
    return prefix.replaceAll('TYPE', dartType);
  }

  static String getRead(String name, String type,
      {String pattern = 'PLACE',
      String itemName = 'item',
      bool isInt64 = false,
      bool isNullable = false}) {
    String readFromJson;
    if (dartTypes.contains(type)) {
      final dartType = type;
      if (isInt64) {
        // todo: change to BigInt or String!
        if (isNullable) {
          readFromJson = 'int.tryParse($pattern ?? "")';
        } else {
          // readFromJson = 'int.tryParse($pattern!)!';
          readFromJson =
              'int.tryParse($pattern ?? "") ?? ${getDefaultJsonValue(dartType)}';
        }
      } else {
        if (isNullable) {
          readFromJson = pattern;
        } else {
          // readFromJson = '${pattern}!';
          readFromJson = '$pattern ?? ${getDefaultJsonValue(dartType)}';
        }
      }
    } else if (type.startsWith('List')) {
      final dartType = type;
      final subDartType = dartType.substring(5, dartType.length - 1);
      final str =
          getRead(name, subDartType, pattern: itemName, itemName: 'innerItem');
      readFromJson =
          '$dartType.from(($pattern ?? []).map(($itemName) => $str).toList())';
    } else {
      readFromJson = '$type.fromJson($pattern ?? <String, dynamic>{})';
    }
    return readFromJson.replaceAll('PLACE', 'json[\'$name\']');
  }

  static String getWrite(String argName, String dartType,
      {String itemName = 'i', isList = false, isNullable = false}) {
    String writeToJson;
    if (dartTypes.contains(dartType)) {
      writeToJson = '';
    } else if (dartType.startsWith('List')) {
      final subDartType = dartType.substring(5, dartType.length - 1);
      final stmt = getWrite(itemName, subDartType,
          itemName: '${itemName}i', isList: true);
      writeToJson = '.map(($itemName) => $stmt).toList()';
    } else {
      writeToJson = '.toJson()';
    }
    String name;
    if (itemName.length == 1) {
      name = 'this.$argName';
    } else {
      name = itemName.substring(0, itemName.length - 1);
    }
    if (isNullable) {
      name = '$name == null ? null : $name!';
    }
    return '$name$writeToJson';
  }

  static String getBuiltInDartType(String tdType) {
    switch (tdType) {
      case 'int':
      case 'int32':
      case 'int53':
      case 'int64':
      case 'long':
        return 'int';
      case 'double':
        return 'double';
      case 'string':
      case 'bytes':
        return 'String';
      case 'Bool':
        return 'bool';
      default:
        return '';
    }
  }

  static String getDefaultJsonValue(String dartType) {
    switch (dartType) {
      case 'int':
      case 'double':
        return '0';
      case 'String':
        return '""';
      case 'bool':
        return 'false';
      default:
        return 'null';
    }
  }
}
