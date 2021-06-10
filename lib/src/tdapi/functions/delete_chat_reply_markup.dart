part of '../tdapi.dart';

class DeleteChatReplyMarkup extends TdFunction {
  /// Deletes the default reply markup from a chat. Must be called after a one-time keyboard or a ForceReply reply markup has been used. UpdateChatReplyMarkup will be sent if the reply markup will be changed
  DeleteChatReplyMarkup(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] The message identifier of the used keyboard
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteChatReplyMarkup.fromJson(Map<String, dynamic> json) {
    return DeleteChatReplyMarkup(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteChatReplyMarkup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
