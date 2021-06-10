part of '../tdapi.dart';

class GetTextEntities extends TdFunction {
  /// Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses) contained in the text. Can be called synchronously
  GetTextEntities({required this.text, this.extra});

  /// [text] The text in which to look for entites
  String text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetTextEntities.fromJson(Map<String, dynamic> json) {
    return GetTextEntities(
      text: json['text'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
