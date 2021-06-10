part of '../tdapi.dart';

class TestVectorString extends TdObject {
  /// A simple object containing a vector of strings; for testing only
  TestVectorString({required this.value, this.extra});

  /// [value] Vector of strings
  List<String> value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestVectorString.fromJson(Map<String, dynamic> json) {
    return TestVectorString(
      value: List<String>.from(
          (json['value'] ?? []).map((item) => item ?? "").toList()),
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

  static const CONSTRUCTOR = 'testVectorString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
