part of '../tdapi.dart';

class SetPinnedChats extends TdFunction {
  /// Changes the order of pinned chats
  SetPinnedChats({required this.chatList, required this.chatIds, this.extra});

  /// [chatList] Chat list in which to change the order of pinned chats
  ChatList chatList;

  /// [chatIds] The new list of pinned chats
  List<int> chatIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetPinnedChats.fromJson(Map<String, dynamic> json) {
    return SetPinnedChats(
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      chatIds: List<int>.from(
          (json['chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "chat_ids": this.chatIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setPinnedChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
