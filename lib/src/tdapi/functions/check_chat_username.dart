part of '../tdapi.dart';

class CheckChatUsername extends TdFunction {
  /// Checks whether a username can be set for a chat
  CheckChatUsername({required this.chatId, required this.username, this.extra});

  /// [chatId] Chat identifier; should be identifier of a supergroup chat, or a channel chat, or a private chat with self, or zero if chat is being created
  int chatId;

  /// [username] Username to be checked
  String username;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckChatUsername.fromJson(Map<String, dynamic> json) {
    return CheckChatUsername(
      chatId: json['chat_id'] ?? 0,
      username: json['username'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "username": this.username,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkChatUsername';

  @override
  String getConstructor() => CONSTRUCTOR;
}
