part of '../tdapi.dart';

class SearchChatsOnServer extends TdFunction {
  /// Searches for the specified query in the title and username of already known chats via request to the server. Returns chats in the order seen in the main chat list
  SearchChatsOnServer({required this.query, required this.limit, this.extra});

  /// [query] Query to search for
  String query;

  /// [limit] The maximum number of chats to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchChatsOnServer.fromJson(Map<String, dynamic> json) {
    return SearchChatsOnServer(
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

  static const CONSTRUCTOR = 'searchChatsOnServer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
