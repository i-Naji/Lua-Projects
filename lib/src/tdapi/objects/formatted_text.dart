part of '../tdapi.dart';

class FormattedText extends TdObject {
  /// A text with some entities
  FormattedText({required this.text, required this.entities, this.extra});

  /// [text] The text
  String text;

  /// [entities] Entities contained in the text. Entities can be nested, but must not mutually intersect with each other.. Pre, Code and PreCode entities can't contain other entities. Bold, Italic, Underline and Strikethrough entities can contain and to be contained in all other entities. All other entities can't contain each other
  List<TextEntity> entities;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory FormattedText.fromJson(Map<String, dynamic> json) {
    return FormattedText(
      text: json['text'] ?? "",
      entities: List<TextEntity>.from((json['entities'] ?? [])
          .map((item) => TextEntity.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "entities": this.entities.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'formattedText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
