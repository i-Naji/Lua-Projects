part of '../tdapi.dart';

class LogStream extends TdObject {
  /// Describes a stream to which TDLib internal log is written
  LogStream();

  /// a LogStream return type can be :
  /// * LogStreamDefault
  /// * LogStreamFile
  /// * LogStreamEmpty
  factory LogStream.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case LogStreamDefault.CONSTRUCTOR:
        return LogStreamDefault.fromJson(json);
      case LogStreamFile.CONSTRUCTOR:
        return LogStreamFile.fromJson(json);
      case LogStreamEmpty.CONSTRUCTOR:
        return LogStreamEmpty.fromJson(json);
      default:
        return LogStream();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'logStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamDefault extends LogStream {
  /// The log is written to stderr or an OS specific log
  LogStreamDefault({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LogStreamDefault.fromJson(Map<String, dynamic> json) {
    return LogStreamDefault(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'logStreamDefault';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamFile extends LogStream {
  /// The log is written to a file
  LogStreamFile(
      {required this.path,
      required this.maxFileSize,
      required this.redirectStderr,
      this.extra});

  /// [path] Path to the file to where the internal TDLib log will be written
  String path;

  /// [maxFileSize] The maximum size of the file to where the internal TDLib log is written before the file will be auto-rotated
  int maxFileSize;

  /// [redirectStderr] Pass true to additionally redirect stderr to the log file. Ignored on Windows
  bool redirectStderr;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LogStreamFile.fromJson(Map<String, dynamic> json) {
    return LogStreamFile(
      path: json['path'] ?? "",
      maxFileSize: json['max_file_size'] ?? 0,
      redirectStderr: json['redirect_stderr'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "path": this.path,
      "max_file_size": this.maxFileSize,
      "redirect_stderr": this.redirectStderr,
    };
  }

  static const CONSTRUCTOR = 'logStreamFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LogStreamEmpty extends LogStream {
  /// The log is written nowhere
  LogStreamEmpty({this.extra});

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LogStreamEmpty.fromJson(Map<String, dynamic> json) {
    return LogStreamEmpty(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'logStreamEmpty';

  @override
  String getConstructor() => CONSTRUCTOR;
}
