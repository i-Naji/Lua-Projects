part of '../tdapi.dart';

class SearchHashtags extends TdFunction {
  /// Searches for recently used hashtags by their prefix
  SearchHashtags({required this.prefix, required this.limit, this.extra});

  /// [prefix] Hashtag prefix to search for
  String prefix;

  /// [limit] The maximum number of hashtags to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchHashtags.fromJson(Map<String, dynamic> json) {
    return SearchHashtags(
      prefix: json['prefix'] ?? "",
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "prefix": this.prefix,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchHashtags';

  @override
  String getConstructor() => CONSTRUCTOR;
}
