part of '../tdapi.dart';

class GetMarkdownText extends TdFunction {
  /// Replaces text entities with Markdown formatting in a human-friendly format. Entities that can't be represented in Markdown unambiguously are kept as is. Can be called synchronously
  GetMarkdownText({required this.text, this.extra});

  /// [text] The text
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMarkdownText.fromJson(Map<String, dynamic> json) {
    return GetMarkdownText(
      text: FormattedText.fromJson(json['text'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMarkdownText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
