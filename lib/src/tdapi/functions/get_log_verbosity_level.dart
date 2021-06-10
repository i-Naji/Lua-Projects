part of '../tdapi.dart';

class GetLogVerbosityLevel extends TdFunction {
  /// Returns current verbosity level of the internal logging of TDLib. Can be called synchronously
  GetLogVerbosityLevel({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    return GetLogVerbosityLevel(
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

  static const CONSTRUCTOR = 'getLogVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
