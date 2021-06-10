part of '../tdapi.dart';

class SetChatPermissions extends TdFunction {
  /// Changes the chat members permissions. Supported only for basic groups and supergroups. Requires can_restrict_members administrator right
  SetChatPermissions(
      {required this.chatId, required this.permissions, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [permissions] New non-administrator members permissions in the chat
  ChatPermissions permissions;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatPermissions.fromJson(Map<String, dynamic> json) {
    return SetChatPermissions(
      chatId: json['chat_id'] ?? 0,
      permissions:
          ChatPermissions.fromJson(json['permissions'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "permissions": this.permissions.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatPermissions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
