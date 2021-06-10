part of '../tdapi.dart';

class SetLogStream extends TdFunction {
  /// Sets new log stream for internal logging of TDLib. Can be called synchronously
  SetLogStream({required this.logStream, this.extra});

  /// [logStream] New log stream
  LogStream logStream;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetLogStream.fromJson(Map<String, dynamic> json) {
    return SetLogStream(
      logStream: LogStream.fromJson(json['log_stream'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "log_stream": this.logStream.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}
