part of '../tdapi.dart';

class DeleteLanguagePack extends TdFunction {
  /// Deletes all information about a language pack in the current localization target. The language pack which is currently in use (including base language pack) or is being synchronized can't be deleted. Can be called before authorization
  DeleteLanguagePack({required this.languagePackId, this.extra});

  /// [languagePackId] Identifier of the language pack to delete
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteLanguagePack.fromJson(Map<String, dynamic> json) {
    return DeleteLanguagePack(
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

  static const CONSTRUCTOR = 'deleteLanguagePack';

  @override
  String getConstructor() => CONSTRUCTOR;
}
