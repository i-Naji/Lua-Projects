part of '../tdapi.dart';

class ChatPosition extends TdObject {
  /// Describes a position of a chat in a chat list
  ChatPosition(
      {required this.list,
      required this.order,
      required this.isPinned,
      this.source});

  /// [list] The chat list
  ChatList list;

  /// [order] A parameter used to determine order of the chat in the chat list. Chats must be sorted by the pair (order, chat.id) in descending order
  int order;

  /// [isPinned] True, if the chat is pinned in the chat list
  bool isPinned;

  /// [source] Source of the chat in the chat list; may be null
  ChatSource? source;

  /// Parse from a json
  factory ChatPosition.fromJson(Map<String, dynamic> json) {
    return ChatPosition(
      list: ChatList.fromJson(json['list'] ?? <String, dynamic>{}),
      order: int.tryParse(json['order'] ?? "") ?? 0,
      isPinned: json['is_pinned'] ?? false,
      source: ChatSource.fromJson(json['source'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "list": this.list.toJson(),
      "order": this.order,
      "is_pinned": this.isPinned,
      "source": this.source == null ? null : this.source!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'chatPosition';

  @override
  String getConstructor() => CONSTRUCTOR;
}
