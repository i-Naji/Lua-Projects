part of '../tdapi.dart';

class GetEmojiSuggestionsUrl extends TdFunction {
  /// Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji replacements. The URL will be valid for 30 seconds after generation
  GetEmojiSuggestionsUrl({required this.languageCode, this.extra});

  /// [languageCode] Language code for which the emoji replacements will be suggested
  String languageCode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetEmojiSuggestionsUrl.fromJson(Map<String, dynamic> json) {
    return GetEmojiSuggestionsUrl(
      languageCode: json['language_code'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "language_code": this.languageCode,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getEmojiSuggestionsUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
