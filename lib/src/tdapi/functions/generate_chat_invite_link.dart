part of '../tdapi.dart';

class GenerateChatInviteLink extends TdFunction {
  /// Generates a new invite link for a chat; the previously generated link is revoked. Available for basic groups, supergroups, and channels. Requires administrator privileges and can_invite_users right
  GenerateChatInviteLink({required this.chatId, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GenerateChatInviteLink.fromJson(Map<String, dynamic> json) {
    return GenerateChatInviteLink(
      chatId: json['chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'generateChatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
