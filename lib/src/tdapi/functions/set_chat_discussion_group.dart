part of '../tdapi.dart';

class SetChatDiscussionGroup extends TdFunction {
  /// Changes the discussion group of a channel chat; requires can_change_info rights in the channel if it is specified
  SetChatDiscussionGroup(
      {required this.chatId, required this.discussionChatId, this.extra});

  /// [chatId] Identifier of the channel chat. Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires can_pin_messages rights in the supergroup)
  int chatId;

  /// [discussionChatId] Identifier of a new channel's discussion group. Use 0 to remove the discussion group.. Use the method getSuitableDiscussionChats to find all suitable groups. Basic group chats must be first upgraded to supergroup chats. If new chat members don't have access to old messages in the supergroup, then toggleSupergroupIsAllHistoryAvailable must be used first to change that
  int discussionChatId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatDiscussionGroup.fromJson(Map<String, dynamic> json) {
    return SetChatDiscussionGroup(
      chatId: json['chat_id'] ?? 0,
      discussionChatId: json['discussion_chat_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "discussion_chat_id": this.discussionChatId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatDiscussionGroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}
