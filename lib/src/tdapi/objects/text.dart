part of '../tdapi.dart';

class Text extends TdObject {
  /// Contains some text
  Text({required this.text, this.extra});

  /// [text] Text
  String text;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Text.fromJson(Map<String, dynamic> json) {
    return Text(
      text: json['text'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
    };
  }

  static const CONSTRUCTOR = 'text';

  @override
  String getConstructor() => CONSTRUCTOR;
}
