part of '../tdapi.dart';

class GetCallbackQueryMessage extends TdFunction {
  /// Returns information about a message with the callback button that originated a callback query; for bots only
  GetCallbackQueryMessage(
      {required this.chatId,
      required this.messageId,
      required this.callbackQueryId,
      this.extra});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Message identifier
  int messageId;

  /// [callbackQueryId] Identifier of the callback query
  int callbackQueryId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetCallbackQueryMessage.fromJson(Map<String, dynamic> json) {
    return GetCallbackQueryMessage(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      callbackQueryId: int.tryParse(json['callback_query_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "callback_query_id": this.callbackQueryId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getCallbackQueryMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
