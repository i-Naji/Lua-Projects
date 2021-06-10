part of '../tdapi.dart';

class EditCustomLanguagePackInfo extends TdFunction {
  /// Edits information about a custom local language pack in the current localization target. Can be called before authorization
  EditCustomLanguagePackInfo({required this.info, this.extra});

  /// [info] New information about the custom local language pack
  LanguagePackInfo info;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditCustomLanguagePackInfo.fromJson(Map<String, dynamic> json) {
    return EditCustomLanguagePackInfo(
      info: LanguagePackInfo.fromJson(json['info'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "info": this.info.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editCustomLanguagePackInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
