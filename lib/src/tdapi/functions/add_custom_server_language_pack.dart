part of '../tdapi.dart';

class AddCustomServerLanguagePack extends TdFunction {
  /// Adds a custom server language pack to the list of installed language packs in current localization target. Can be called before authorization
  AddCustomServerLanguagePack({required this.languagePackId, this.extra});

  /// [languagePackId] Identifier of a language pack to be added; may be different from a name that is used in an "https://t.me/setlanguage/" link
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddCustomServerLanguagePack.fromJson(Map<String, dynamic> json) {
    return AddCustomServerLanguagePack(
      languagePackId: json['language_pack_id'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addCustomServerLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
