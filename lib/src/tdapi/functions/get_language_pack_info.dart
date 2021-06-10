part of '../tdapi.dart';

class GetLanguagePackInfo extends TdFunction {
  /// Returns information about a language pack. Returned language pack identifier may be different from a provided one. Can be called before authorization
  GetLanguagePackInfo({required this.languagePackId, this.extra});

  /// [languagePackId] Language pack identifier
  String languagePackId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLanguagePackInfo.fromJson(Map<String, dynamic> json) {
    return GetLanguagePackInfo(
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

  static const CONSTRUCTOR = 'getLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
