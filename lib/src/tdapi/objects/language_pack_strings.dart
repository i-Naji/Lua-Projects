part of '../tdapi.dart';

class LanguagePackStrings extends TdObject {
  /// Contains a list of language pack strings
  LanguagePackStrings({required this.strings, this.extra});

  /// [strings] A list of language pack strings
  List<LanguagePackString> strings;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LanguagePackStrings.fromJson(Map<String, dynamic> json) {
    return LanguagePackStrings(
      strings: List<LanguagePackString>.from((json['strings'] ?? [])
          .map((item) =>
              LanguagePackString.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "strings": this.strings.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'languagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
