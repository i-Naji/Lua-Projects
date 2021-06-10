part of '../tdapi.dart';

class ChatList extends TdObject {
  /// Describes a list of chats
  ChatList();

  /// a ChatList return type can be :
  /// * ChatListMain
  /// * ChatListArchive
  /// * ChatListFilter
  factory ChatList.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatListMain.CONSTRUCTOR:
        return ChatListMain.fromJson(json);
      case ChatListArchive.CONSTRUCTOR:
        return ChatListArchive.fromJson(json);
      case ChatListFilter.CONSTRUCTOR:
        return ChatListFilter.fromJson(json);
      default:
        return ChatList();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatList';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatListMain extends ChatList {
  /// A main list of chats
  ChatListMain();

  /// Parse from a json
  factory ChatListMain.fromJson(Map<String, dynamic> json) {
    return ChatListMain();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatListMain';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatListArchive extends ChatList {
  /// A list of chats usually located at the top of the main chat list. Unmuted chats are automatically moved from the Archive to the Main chat list when a new message arrives
  ChatListArchive();

  /// Parse from a json
  factory ChatListArchive.fromJson(Map<String, dynamic> json) {
    return ChatListArchive();
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
    };
  }

  static const CONSTRUCTOR = 'chatListArchive';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatListFilter extends ChatList {
  /// A list of chats belonging to a chat filter
  ChatListFilter({required this.chatFilterId});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// Parse from a json
  factory ChatListFilter.fromJson(Map<String, dynamic> json) {
    return ChatListFilter(
      chatFilterId: json['chat_filter_id'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
    };
  }

  static const CONSTRUCTOR = 'chatListFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
