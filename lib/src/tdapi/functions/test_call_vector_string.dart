part of '../tdapi.dart';

class TestCallVectorString extends TdFunction {
  /// Returns the received vector of strings; for testing only. This is an offline method. Can be called before authorization
  TestCallVectorString({required this.x, this.extra});

  /// [x] Vector of strings to return
  List<String> x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestCallVectorString.fromJson(Map<String, dynamic> json) {
    return TestCallVectorString(
      x: List<String>.from(
          (json['x'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
