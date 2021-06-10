part of '../tdapi.dart';

class SearchPublicChats extends TdFunction {
  /// Searches public chats by looking for specified query in their username and title. Currently only private chats, supergroups and channels can be public. Returns a meaningful number of results. Returns nothing if the length of the searched username prefix is less than 5. Excludes private chats with contacts and chats from the chat list from the results
  SearchPublicChats({required this.query, this.extra});

  /// [query] Query to search for
  String query;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchPublicChats.fromJson(Map<String, dynamic> json) {
    return SearchPublicChats(
      query: json['query'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "query": this.query,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
