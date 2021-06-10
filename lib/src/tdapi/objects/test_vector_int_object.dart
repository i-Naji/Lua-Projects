part of '../tdapi.dart';

class TestVectorIntObject extends TdObject {
  /// A simple object containing a vector of objects that hold a number; for testing only
  TestVectorIntObject({required this.value, this.extra});

  /// [value] Vector of objects
  List<TestInt> value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestVectorIntObject.fromJson(Map<String, dynamic> json) {
    return TestVectorIntObject(
      value: List<TestInt>.from((json['value'] ?? [])
          .map((item) => TestInt.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorIntObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
