part of '../tdapi.dart';

class UnpinAllChatMessages extends TdFunction {
  /// Removes all pinned messages from a chat; requires can_pin_messages rights in the group or can_edit_messages rights in the channel
  UnpinAllChatMessages({required this.chatId, this.extra});

  /// [chatId] Identifier of the chat
  int chatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory UnpinAllChatMessages.fromJson(Map<String, dynamic> json) {
    return UnpinAllChatMessages(
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

  static const CONSTRUCTOR = 'unpinAllChatMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
