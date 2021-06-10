part of '../tdapi.dart';

class AddChatMember extends TdFunction {
  /// Adds a new member to a chat. Members can't be added to private or secret chats. Members will not be added until the chat state has been synchronized with the server
  AddChatMember(
      {required this.chatId,
      required this.userId,
      required this.forwardLimit,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] Identifier of the user
  int userId;

  /// [forwardLimit] The number of earlier messages from the chat to be forwarded to the new member; up to 100. Ignored for supergroups and channels
  int forwardLimit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddChatMember.fromJson(Map<String, dynamic> json) {
    return AddChatMember(
      chatId: json['chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      forwardLimit: json['forward_limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "forward_limit": this.forwardLimit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addChatMember';

  @override
  String getConstructor() => CONSTRUCTOR;
}
