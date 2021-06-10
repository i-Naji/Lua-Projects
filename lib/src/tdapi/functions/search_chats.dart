part of '../tdapi.dart';

class SearchChats extends TdFunction {
  /// Searches for the specified query in the title and username of already known chats, this is an offline request. Returns chats in the order seen in the main chat list
  SearchChats({required this.query, required this.limit, this.extra});

  /// [query] Query to search for. If the query is empty, returns up to 20 recently found chats
  String query;

  /// [limit] The maximum number of chats to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChats.fromJson(Map<String, dynamic> json) {
    return SearchChats(
      query: json['query'] ?? "",
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
