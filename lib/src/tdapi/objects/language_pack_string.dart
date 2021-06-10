part of '../tdapi.dart';

class LanguagePackString extends TdObject {
  /// Represents one language pack string
  LanguagePackString({required this.key, required this.value});

  /// [key] String key
  String key;

  /// [value] String value
  LanguagePackStringValue value;

  /// Parse from a json
  factory LanguagePackString.fromJson(Map<String, dynamic> json) {
    return LanguagePackString(
      key: json['key'] ?? "",
      value: LanguagePackStringValue.fromJson(
          json['value'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "key": this.key,
      "value": this.value.toJson(),
    };
  }

  static const CONSTRUCTOR = 'languagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
