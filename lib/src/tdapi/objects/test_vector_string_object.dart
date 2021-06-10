part of '../tdapi.dart';

class TestVectorStringObject extends TdObject {
  /// A simple object containing a vector of objects that hold a string; for testing only
  TestVectorStringObject({required this.value, this.extra});

  /// [value] Vector of objects
  List<TestString> value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestVectorStringObject.fromJson(Map<String, dynamic> json) {
    return TestVectorStringObject(
      value: List<TestString>.from((json['value'] ?? [])
          .map((item) => TestString.fromJson(item ?? <String, dynamic>{}))
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

  static const CONSTRUCTOR = 'testVectorStringObject';

  @override
  String getConstructor() => CONSTRUCTOR;
}
