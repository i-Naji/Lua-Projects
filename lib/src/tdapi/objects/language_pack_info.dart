part of '../tdapi.dart';

class LanguagePackInfo extends TdObject {
  /// Contains information about a language pack
  LanguagePackInfo(
      {required this.id,
      required this.baseLanguagePackId,
      required this.name,
      required this.nativeName,
      required this.pluralCode,
      required this.isOfficial,
      required this.isRtl,
      required this.isBeta,
      required this.isInstalled,
      required this.totalStringCount,
      required this.translatedStringCount,
      required this.localStringCount,
      required this.translationUrl,
      this.extra});

  /// [id] Unique language pack identifier
  String id;

  /// [baseLanguagePackId] Identifier of a base language pack; may be empty. If a string is missed in the language pack, then it should be fetched from base language pack. Unsupported in custom language packs
  String baseLanguagePackId;

  /// [name] Language name
  String name;

  /// [nativeName] Name of the language in that language
  String nativeName;

  /// [pluralCode] A language code to be used to apply plural forms. See https://www.unicode.org/cldr/charts/latest/supplemental/language_plural_rules.html for more info
  String pluralCode;

  /// [isOfficial] True, if the language pack is official
  bool isOfficial;

  /// [isRtl] True, if the language pack strings are RTL
  bool isRtl;

  /// [isBeta] True, if the language pack is a beta language pack
  bool isBeta;

  /// [isInstalled] True, if the language pack is installed by the current user
  bool isInstalled;

  /// [totalStringCount] Total number of non-deleted strings from the language pack
  int totalStringCount;

  /// [translatedStringCount] Total number of translated strings from the language pack
  int translatedStringCount;

  /// [localStringCount] Total number of non-deleted strings from the language pack available locally
  int localStringCount;

  /// [translationUrl] Link to language translation interface; empty for custom local language packs
  String translationUrl;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LanguagePackInfo.fromJson(Map<String, dynamic> json) {
    return LanguagePackInfo(
      id: json['id'] ?? "",
      baseLanguagePackId: json['base_language_pack_id'] ?? "",
      name: json['name'] ?? "",
      nativeName: json['native_name'] ?? "",
      pluralCode: json['plural_code'] ?? "",
      isOfficial: json['is_official'] ?? false,
      isRtl: json['is_rtl'] ?? false,
      isBeta: json['is_beta'] ?? false,
      isInstalled: json['is_installed'] ?? false,
      totalStringCount: json['total_string_count'] ?? 0,
      translatedStringCount: json['translated_string_count'] ?? 0,
      localStringCount: json['local_string_count'] ?? 0,
      translationUrl: json['translation_url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "base_language_pack_id": this.baseLanguagePackId,
      "name": this.name,
      "native_name": this.nativeName,
      "plural_code": this.pluralCode,
      "is_official": this.isOfficial,
      "is_rtl": this.isRtl,
      "is_beta": this.isBeta,
      "is_installed": this.isInstalled,
      "total_string_count": this.totalStringCount,
      "translated_string_count": this.translatedStringCount,
      "local_string_count": this.localStringCount,
      "translation_url": this.translationUrl,
    };
  }

  static const CONSTRUCTOR = 'languagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
