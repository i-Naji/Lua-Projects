part of '../tdapi.dart';

class LocalizationTargetInfo extends TdObject {
  /// Contains information about the current localization target
  LocalizationTargetInfo({required this.languagePacks, this.extra});

  /// [languagePacks] List of available language packs for this application
  List<LanguagePackInfo> languagePacks;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LocalizationTargetInfo.fromJson(Map<String, dynamic> json) {
    return LocalizationTargetInfo(
      languagePacks: List<LanguagePackInfo>.from((json['language_packs'] ?? [])
          .map((item) => LanguagePackInfo.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_packs": this.languagePacks.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'localizationTargetInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
