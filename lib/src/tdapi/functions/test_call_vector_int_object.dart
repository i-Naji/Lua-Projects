part of '../tdapi.dart';

class TestCallVectorIntObject extends TdFunction {
  /// Returns the received vector of objects containing a number; for testing only. This is an offline method. Can be called before authorization
  TestCallVectorIntObject({required this.x, this.extra});

  /// [x] Vector of objects to return
  List<TestInt> x;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TestCallVectorIntObject.fromJson(Map<String, dynamic> json) {
    return TestCallVectorIntObject(
      x: List<TestInt>.from((json['x'] ?? [])
          .map((item) => TestInt.fromJson(item ?? <String, dynamic>{}))
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

  static const CONSTRUCTOR = 'testCallVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
