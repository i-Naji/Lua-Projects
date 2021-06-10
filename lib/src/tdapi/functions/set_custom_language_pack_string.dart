part of '../tdapi.dart';

class SetCustomLanguagePackString extends TdFunction {
  /// Adds, edits or deletes a string in a custom local language pack. Can be called before authorization
  SetCustomLanguagePackString(
      {required this.languagePackId, required this.newString, this.extra});

  /// [languagePackId] Identifier of a previously added custom local language pack in the current localization target
  String languagePackId;

  /// [newString] New language pack string
  LanguagePackString newString;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetCustomLanguagePackString.fromJson(Map<String, dynamic> json) {
    return SetCustomLanguagePackString(
      languagePackId: json['language_pack_id'] ?? "",
      newString: LanguagePackString.fromJson(
          json['new_string'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "new_string": this.newString.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setCustomLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
