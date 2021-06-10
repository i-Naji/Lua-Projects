part of '../tdapi.dart';

class TestString extends TdObject {
  /// A simple object containing a string; for testing only
  TestString({required this.value, this.extra});

  /// [value] String
  String value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestString.fromJson(Map<String, dynamic> json) {
    return TestString(
      value: json['value'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "value": this.value,
    };
  }

  static const CONSTRUCTOR = 'testString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
