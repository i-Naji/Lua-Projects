part of '../tdapi.dart';

class SetChatMemberStatus extends TdFunction {
  /// Changes the status of a chat member, needs appropriate privileges. This function is currently not suitable for adding new members to the chat and transferring chat ownership; instead, use addChatMember or transferChatOwnership. The chat member status will not be changed until it has been synchronized with the server
  SetChatMemberStatus(
      {required this.chatId,
      required this.userId,
      required this.status,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] User identifier
  int userId;

  /// [status] The new status of the member in the chat
  ChatMemberStatus status;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatMemberStatus.fromJson(Map<String, dynamic> json) {
    return SetChatMemberStatus(
      chatId: json['chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      status: ChatMemberStatus.fromJson(json['status'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "status": this.status.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatMemberStatus';

  @override
  String getConstructor() => CONSTRUCTOR;
}
