part of '../tdapi.dart';

class SetCustomLanguagePack extends TdFunction {
  /// Adds or changes a custom local language pack to the current localization target
  SetCustomLanguagePack(
      {required this.info, required this.strings, this.extra});

  /// [info] Information about the language pack. Language pack setCustomLanguagePack must start with 'X', consist only of English letters, digits and hyphens, and must not exceed 64 characters. Can be called before authorization
  LanguagePackInfo info;

  /// [strings] Strings of the new language pack
  List<LanguagePackString> strings;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetCustomLanguagePack.fromJson(Map<String, dynamic> json) {
    return SetCustomLanguagePack(
      info: LanguagePackInfo.fromJson(json['info'] ?? <String, dynamic>{}),
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
      "info": this.info.toJson(),
      "strings": this.strings.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCustomLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
