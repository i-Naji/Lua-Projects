part of '../tdapi.dart';

class JsonValue extends TdObject {
  /// Represents a JSON value
  JsonValue();

  /// a JsonValue return type can be :
  /// * JsonValueNull
  /// * JsonValueBoolean
  /// * JsonValueNumber
  /// * JsonValueString
  /// * JsonValueArray
  /// * JsonValueObject
  factory JsonValue.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case JsonValueNull.CONSTRUCTOR:
        return JsonValueNull.fromJson(json);
      case JsonValueBoolean.CONSTRUCTOR:
        return JsonValueBoolean.fromJson(json);
      case JsonValueNumber.CONSTRUCTOR:
        return JsonValueNumber.fromJson(json);
      case JsonValueString.CONSTRUCTOR:
        return JsonValueString.fromJson(json);
      case JsonValueArray.CONSTRUCTOR:
        return JsonValueArray.fromJson(json);
      case JsonValueObject.CONSTRUCTOR:
        return JsonValueObject.fromJson(json);
      default:
        return JsonValue();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'jsonValue';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNull extends JsonValue {
  /// Represents a null JSON value
  JsonValueNull({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueNull.fromJson(Map<String, dynamic> json) {
    return JsonValueNull(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'jsonValueNull';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueBoolean extends JsonValue {
  /// Represents a boolean JSON value
  JsonValueBoolean({required this.value, this.extra});

  /// [value] The value
  bool value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueBoolean.fromJson(Map<String, dynamic> json) {
    return JsonValueBoolean(
      value: json['value'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'jsonValueBoolean';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueNumber extends JsonValue {
  /// Represents a numeric JSON value
  JsonValueNumber({required this.value, this.extra});

  /// [value] The value
  double value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueNumber.fromJson(Map<String, dynamic> json) {
    return JsonValueNumber(
      value: json['value'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'jsonValueNumber';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueString extends JsonValue {
  /// Represents a string JSON value
  JsonValueString({required this.value, this.extra});

  /// [value] The value
  String value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueString.fromJson(Map<String, dynamic> json) {
    return JsonValueString(
      value: json['value'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'jsonValueString';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueArray extends JsonValue {
  /// Represents a JSON array
  JsonValueArray({required this.values, this.extra});

  /// [values] The list of array elements
  List<JsonValue> values;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueArray.fromJson(Map<String, dynamic> json) {
    return JsonValueArray(
      values: List<JsonValue>.from((json['values'] ?? [])
          .map((item) => JsonValue.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "values": this.values.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueArray';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class JsonValueObject extends JsonValue {
  /// Represents a JSON object
  JsonValueObject({required this.members, this.extra});

  /// [members] The list of object members
  List<JsonObjectMember> members;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory JsonValueObject.fromJson(Map<String, dynamic> json) {
    return JsonValueObject(
      members: List<JsonObjectMember>.from((json['members'] ?? [])
          .map((item) => JsonObjectMember.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "members": this.members.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'jsonValueObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
