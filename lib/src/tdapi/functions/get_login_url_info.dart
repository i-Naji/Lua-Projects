part of '../tdapi.dart';

class GetLoginUrlInfo extends TdFunction {
  /// Returns information about a button of type inlineKeyboardButtonTypeLoginUrl. The method needs to be called when the user presses the button
  GetLoginUrlInfo(
      {required this.chatId,
      required this.messageId,
      required this.buttonId,
      this.extra});

  /// [chatId] Chat identifier of the message with the button
  int chatId;

  /// [messageId] Message identifier of the message with the button
  int messageId;

  /// [buttonId] Button identifier
  int buttonId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetLoginUrlInfo.fromJson(Map<String, dynamic> json) {
    return GetLoginUrlInfo(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      buttonId: json['button_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "button_id": this.buttonId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getLoginUrlInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
