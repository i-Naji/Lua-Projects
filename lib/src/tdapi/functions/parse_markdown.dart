part of '../tdapi.dart';

class ParseMarkdown extends TdFunction {
  /// Parses Markdown entities in a human-friendly format, ignoring markup errors. Can be called synchronously
  ParseMarkdown({required this.text, this.extra});

  /// [text] The text to parse. For example, "__italic__
  FormattedText text;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ParseMarkdown.fromJson(Map<String, dynamic> json) {
    return ParseMarkdown(
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

  static const CONSTRUCTOR = 'parseMarkdown';

  @override
  String getConstructor() => CONSTRUCTOR;
}
