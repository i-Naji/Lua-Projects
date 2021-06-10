part of '../tdapi.dart';

class InlineKeyboardButton extends TdObject {
  /// Represents a single button in an inline keyboard
  InlineKeyboardButton({required this.text, required this.type});

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  InlineKeyboardButtonType type;

  /// Parse from a json
  factory InlineKeyboardButton.fromJson(Map<String, dynamic> json) {
    return InlineKeyboardButton(
      text: json['text'] ?? "",
      type: InlineKeyboardButtonType.fromJson(
          json['type'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inlineKeyboardButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
