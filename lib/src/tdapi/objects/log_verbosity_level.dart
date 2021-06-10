part of '../tdapi.dart';

class LogVerbosityLevel extends TdObject {
  /// Contains a TDLib internal log verbosity level
  LogVerbosityLevel({required this.verbosityLevel, this.extra});

  /// [verbosityLevel] Log verbosity level
  int verbosityLevel;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LogVerbosityLevel.fromJson(Map<String, dynamic> json) {
    return LogVerbosityLevel(
      verbosityLevel: json['verbosity_level'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "verbosity_level": this.verbosityLevel,
    };
  }

  static const CONSTRUCTOR = 'logVerbosityLevel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
