part of '../tdapi.dart';

class SearchContacts extends TdFunction {
  /// Searches for the specified query in the first names, last names and usernames of the known user contacts
  SearchContacts({required this.query, required this.limit, this.extra});

  /// [query] Query to search for; may be empty to return all contacts
  String query;

  /// [limit] The maximum number of users to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchContacts.fromJson(Map<String, dynamic> json) {
    return SearchContacts(
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

  static const CONSTRUCTOR = 'searchContacts';

  @override
  String getConstructor() => CONSTRUCTOR;
}
