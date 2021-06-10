part of '../tdapi.dart';

class GetLanguagePackStrings extends TdFunction {
  /// Returns strings from a language pack in the current localization target by their keys. Can be called before authorization
  GetLanguagePackStrings(
      {required this.languagePackId, required this.keys, this.extra});

  /// [languagePackId] Language pack identifier of the strings to be returned
  String languagePackId;

  /// [keys] Language pack keys of the strings to be returned; leave empty to request all available strings
  List<String> keys;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLanguagePackStrings.fromJson(Map<String, dynamic> json) {
    return GetLanguagePackStrings(
      languagePackId: json['language_pack_id'] ?? "",
      keys: List<String>.from(
          (json['keys'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_pack_id": this.languagePackId,
      "keys": this.keys.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLanguagePackStrings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
