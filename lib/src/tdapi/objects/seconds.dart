part of '../tdapi.dart';

class Seconds extends TdObject {
  /// Contains a value representing a number of seconds
  Seconds({required this.seconds, this.extra});

  /// [seconds] Number of seconds
  double seconds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Seconds.fromJson(Map<String, dynamic> json) {
    return Seconds(
      seconds: json['seconds'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "seconds": this.seconds,
    };
  }

  static const CONSTRUCTOR = 'seconds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
