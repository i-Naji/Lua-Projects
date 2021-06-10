part of '../tdapi.dart';

class AddChatToList extends TdFunction {
  /// Adds a chat to a chat list. A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if needed
  AddChatToList({required this.chatId, required this.chatList, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [chatList] The chat list. Use getChatListsToAddChat to get suitable chat lists
  ChatList chatList;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddChatToList.fromJson(Map<String, dynamic> json) {
    return AddChatToList(
      chatId: json['chat_id'] ?? 0,
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "chat_list": this.chatList.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addChatToList';

  @override
  String getConstructor() => CONSTRUCTOR;
}
