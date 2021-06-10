part of '../tdapi.dart';

class SetAlarm extends TdFunction {
  /// Succeeds after a specified amount of time has passed. Can be called before initialization
  SetAlarm({required this.seconds, this.extra});

  /// [seconds] Number of seconds before the function returns
  double seconds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetAlarm.fromJson(Map<String, dynamic> json) {
    return SetAlarm(
      seconds: json['seconds'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "seconds": this.seconds,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAlarm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
