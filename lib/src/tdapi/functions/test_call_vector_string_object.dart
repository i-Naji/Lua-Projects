part of '../tdapi.dart';

class TestCallVectorStringObject extends TdFunction {
  /// Returns the received vector of objects containing a string; for testing only. This is an offline method. Can be called before authorization
  TestCallVectorStringObject({required this.x, this.extra});

  /// [x] Vector of objects to return
  List<TestString> x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestCallVectorStringObject.fromJson(Map<String, dynamic> json) {
    return TestCallVectorStringObject(
      x: List<TestString>.from((json['x'] ?? [])
          .map((item) => TestString.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "x": this.x.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'testCallVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
