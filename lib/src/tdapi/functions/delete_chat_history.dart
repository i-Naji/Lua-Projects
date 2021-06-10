part of '../tdapi.dart';

class DeleteChatHistory extends TdFunction {
  /// Deletes all messages in the chat. Use Chat.can_be_deleted_only_for_self and Chat.can_be_deleted_for_all_users fields to find whether and how the method can be applied to the chat
  DeleteChatHistory(
      {required this.chatId,
      required this.removeFromChatList,
      required this.revoke,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [removeFromChatList] Pass true if the chat should be removed from the chat list
  bool removeFromChatList;

  /// [revoke] Pass true to try to delete chat history for all users
  bool revoke;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteChatHistory.fromJson(Map<String, dynamic> json) {
    return DeleteChatHistory(
      chatId: json['chat_id'] ?? 0,
      removeFromChatList: json['remove_from_chat_list'] ?? false,
      revoke: json['revoke'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "remove_from_chat_list": this.removeFromChatList,
      "revoke": this.revoke,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'deleteChatHistory';

  @override
  String getConstructor() => CONSTRUCTOR;
}
