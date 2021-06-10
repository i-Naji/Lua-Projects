part of '../tdapi.dart';

class KeyboardButton extends TdObject {
  /// Represents a single button in a bot keyboard
  KeyboardButton({required this.text, required this.type});

  /// [text] Text of the button
  String text;

  /// [type] Type of the button
  KeyboardButtonType type;

  /// Parse from a json
  factory KeyboardButton.fromJson(Map<String, dynamic> json) {
    return KeyboardButton(
      text: json['text'] ?? "",
      type: KeyboardButtonType.fromJson(json['type'] ?? <String, dynamic>{}),
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

  static const CONSTRUCTOR = 'keyboardButton';

  @override
  String getConstructor() => CONSTRUCTOR;
}
