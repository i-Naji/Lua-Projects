part of '../tdapi.dart';

class SynchronizeLanguagePack extends TdFunction {
  /// Fetches the latest versions of all strings from a language pack in the current localization target from the server. This method shouldn't be called explicitly for the current used/base language packs. Can be called before authorization
  SynchronizeLanguagePack({required this.languagePackId, this.extra});

  /// [languagePackId] Language pack identifier
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SynchronizeLanguagePack.fromJson(Map<String, dynamic> json) {
    return SynchronizeLanguagePack(
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

  static const CONSTRUCTOR = 'synchronizeLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
