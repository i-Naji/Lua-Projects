part of '../tdapi.dart';

class GetChats extends TdFunction {
  /// Returns an ordered list of chats in a chat list. Chats are sorted by the pair (chat.position.order, chat.id) in descending order. (For example, to get a list of chats from the beginning, the offset_order should be equal to a biggest signed 64-bit number 9223372036854775807 == 2. For optimal performance the number of returned chats is chosen by the library
  GetChats(
      {required this.chatList,
      required this.offsetOrder,
      required this.offsetChatId,
      required this.limit,
      this.extra});

  /// [chatList] The chat list in which to return chats
  ChatList chatList;

  /// [offsetOrder] Chat order to return chats from
  int offsetOrder;

  /// [offsetChatId] Chat identifier to return chats from
  int offsetChatId;

  /// [limit] The maximum number of chats to be returned. It is possible that fewer chats than the limit are returned even if the end of the list is not reached
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChats.fromJson(Map<String, dynamic> json) {
    return GetChats(
      chatList: ChatList.fromJson(json['chat_list'] ?? <String, dynamic>{}),
      offsetOrder: int.tryParse(json['offset_order'] ?? "") ?? 0,
      offsetChatId: json['offset_chat_id'] ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_list": this.chatList.toJson(),
      "offset_order": this.offsetOrder,
      "offset_chat_id": this.offsetChatId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
