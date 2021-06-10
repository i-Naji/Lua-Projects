part of '../tdapi.dart';

class TransferChatOwnership extends TdFunction {
  /// Changes the owner of a chat. The current user must be a current owner of the chat. Use the method canTransferOwnership to check whether the ownership can be transferred from the current session. Available only for supergroups and channel chats
  TransferChatOwnership(
      {required this.chatId,
      required this.userId,
      required this.password,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userId] Identifier of the user to which transfer the ownership. The ownership can't be transferred to a bot or to a deleted user
  int userId;

  /// [password] The password of the current user
  String password;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory TransferChatOwnership.fromJson(Map<String, dynamic> json) {
    return TransferChatOwnership(
      chatId: json['chat_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      password: json['password'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_id": this.userId,
      "password": this.password,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'transferChatOwnership';

  @override
  String getConstructor() => CONSTRUCTOR;
}
