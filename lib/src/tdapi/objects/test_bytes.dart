part of '../tdapi.dart';

class TestBytes extends TdObject {
  /// A simple object containing a sequence of bytes; for testing only
  TestBytes({required this.value, this.extra});

  /// [value] Bytes
  String value;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TestBytes.fromJson(Map<String, dynamic> json) {
    return TestBytes(
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

  static const CONSTRUCTOR = 'testBytes';

  @override
  String getConstructor() => CONSTRUCTOR;
}
