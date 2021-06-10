part of '../tdapi.dart';

class GetMessages extends TdFunction {
  /// Returns information about messages. If a message is not found, returns null on the corresponding position of the result
  GetMessages({required this.chatId, required this.messageIds, this.extra});

  /// [chatId] Identifier of the chat the messages belong to
  int chatId;

  /// [messageIds] Identifiers of the messages to get
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessages.fromJson(Map<String, dynamic> json) {
    return GetMessages(
      chatId: json['chat_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
