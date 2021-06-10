part of '../tdapi.dart';

class TestCallBytes extends TdFunction {
  /// Returns the received bytes; for testing only. This is an offline method. Can be called before authorization
  TestCallBytes({required this.x, this.extra});

  /// [x] Bytes to return
  String x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestCallBytes.fromJson(Map<String, dynamic> json) {
    return TestCallBytes(
      x: json['x'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
}
