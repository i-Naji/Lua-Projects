part of '../tdapi.dart';

class TestVectorInt extends TdObject {
  /// A simple object containing a vector of numbers; for testing only
  TestVectorInt({required this.value, this.extra});

  /// [value] Vector of numbers
  List<int> value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestVectorInt.fromJson(Map<String, dynamic> json) {
    return TestVectorInt(
      value: List<int>.from(
          (json['value'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'testVectorInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
