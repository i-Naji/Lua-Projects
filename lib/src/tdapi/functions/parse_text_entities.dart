part of '../tdapi.dart';

class ParseTextEntities extends TdFunction {
  /// Parses Bold, Italic, Underline, Strikethrough, Code, Pre, PreCode, TextUrl and MentionName entities contained in the text. Can be called synchronously
  ParseTextEntities({required this.text, required this.parseMode, this.extra});

  /// [text] The text to parse
  String text;

  /// [parseMode] Text parse mode
  TextParseMode parseMode;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ParseTextEntities.fromJson(Map<String, dynamic> json) {
    return ParseTextEntities(
      text: json['text'] ?? "",
      parseMode:
          TextParseMode.fromJson(json['parse_mode'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "parse_mode": this.parseMode.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'parseTextEntities';

  @override
  String getConstructor() => CONSTRUCTOR;
}
