part of '../tdapi.dart';

class GetLogStream extends TdFunction {
  /// Returns information about currently used log stream for internal logging of TDLib. Can be called synchronously
  GetLogStream({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLogStream.fromJson(Map<String, dynamic> json) {
    return GetLogStream(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLogStream';

  @override
  String getConstructor() => CONSTRUCTOR;
}
