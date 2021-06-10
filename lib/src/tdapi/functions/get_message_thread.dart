part of '../tdapi.dart';

class GetMessageThread extends TdFunction {
  /// Returns information about a message thread. Can be used only if message.can_get_message_thread == true
  GetMessageThread({required this.chatId, required this.messageId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageThread.fromJson(Map<String, dynamic> json) {
    return GetMessageThread(
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

  static const CONSTRUCTOR = 'getMessageThread';

  @override
  String getConstructor() => CONSTRUCTOR;
}
