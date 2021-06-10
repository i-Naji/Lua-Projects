part of '../tdapi.dart';

class UpgradeBasicGroupChatToSupergroupChat extends TdFunction {
  /// Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and messageChatUpgradeFrom; requires creator privileges. Deactivates the original basic group
  UpgradeBasicGroupChatToSupergroupChat({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat to upgrade
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory UpgradeBasicGroupChatToSupergroupChat.fromJson(
      Map<String, dynamic> json) {
    return UpgradeBasicGroupChatToSupergroupChat(
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

  static const CONSTRUCTOR = 'upgradeBasicGroupChatToSupergroupChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
