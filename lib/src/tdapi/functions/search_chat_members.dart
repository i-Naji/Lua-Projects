part of '../tdapi.dart';

class SearchChatMembers extends TdFunction {
  /// Searches for a specified query in the first name, last name and username of the members of a specified chat. Requires administrator rights in channels
  SearchChatMembers(
      {required this.chatId,
      required this.query,
      required this.limit,
      required this.filter,
      this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [query] Query to search for
  String query;

  /// [limit] The maximum number of users to be returned
  int limit;

  /// [filter] The type of users to return. By default, chatMembersFilterMembers
  ChatMembersFilter filter;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChatMembers.fromJson(Map<String, dynamic> json) {
    return SearchChatMembers(
      chatId: json['chat_id'] ?? 0,
      query: json['query'] ?? "",
      limit: json['limit'] ?? 0,
      filter: ChatMembersFilter.fromJson(json['filter'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "query": this.query,
      "limit": this.limit,
      "filter": this.filter.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
