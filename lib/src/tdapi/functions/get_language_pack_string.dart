part of '../tdapi.dart';

class GetLanguagePackString extends TdFunction {
  /// Returns a string stored in the local database from the specified localization target and language pack by its key. Returns a 404 error if the string is not found. Can be called synchronously
  GetLanguagePackString(
      {required this.languagePackDatabasePath,
      required this.localizationTarget,
      required this.languagePackId,
      required this.key,
      this.extra});

  /// [languagePackDatabasePath] Path to the language pack database in which strings are stored
  String languagePackDatabasePath;

  /// [localizationTarget] Localization target to which the language pack belongs
  String localizationTarget;

  /// [languagePackId] Language pack identifier
  String languagePackId;

  /// [key] Language pack key of the string to be returned
  String key;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLanguagePackString.fromJson(Map<String, dynamic> json) {
    return GetLanguagePackString(
      languagePackDatabasePath: json['language_pack_database_path'] ?? "",
      localizationTarget: json['localization_target'] ?? "",
      languagePackId: json['language_pack_id'] ?? "",
      key: json['key'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_database_path": this.languagePackDatabasePath,
      "localization_target": this.localizationTarget,
      "language_pack_id": this.languagePackId,
      "key": this.key,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLanguagePackString';

  @override
  String getConstructor() => CONSTRUCTOR;
}
