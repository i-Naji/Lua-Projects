part of '../tdapi.dart';

class GetMessageLocally extends TdFunction {
  /// Returns information about a message, if it is available locally without sending network request. This is an offline request
  GetMessageLocally(
      {required this.chatId, required this.messageId, this.extra});

  /// [chatId] Identifier of the chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message to get
  int messageId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageLocally.fromJson(Map<String, dynamic> json) {
    return GetMessageLocally(
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

  static const CONSTRUCTOR = 'getMessageLocally';

  @override
  String getConstructor() => CONSTRUCTOR;
}
