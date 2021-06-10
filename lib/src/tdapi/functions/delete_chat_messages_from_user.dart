part of '../tdapi.dart';

class DeleteChatMessagesFromUser extends TdFunction {
  /// Deletes all messages sent by the specified user to a chat. Supported only for supergroups; requires can_delete_messages administrator privileges
  DeleteChatMessagesFromUser(
      {required this.chatId, required this.userId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteChatMessagesFromUser.fromJson(Map<String, dynamic> json) {
    return DeleteChatMessagesFromUser(
      chatId: json['chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteChatMessagesFromUser';

  @override
  String getConstructor() => CONSTRUCTOR;
}
