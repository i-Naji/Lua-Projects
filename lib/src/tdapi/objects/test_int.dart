part of '../tdapi.dart';

class TestInt extends TdObject {
  /// A simple object containing a number; for testing only
  TestInt({required this.value, this.extra});

  /// [value] Number
  int value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestInt.fromJson(Map<String, dynamic> json) {
    return TestInt(
      value: json['value'] ?? 0,
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

  static const CONSTRUCTOR = 'testInt';

  @override
  String getConstructor() => CONSTRUCTOR;
}
