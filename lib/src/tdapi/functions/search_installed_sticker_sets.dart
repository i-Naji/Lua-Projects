part of '../tdapi.dart';

class SearchInstalledStickerSets extends TdFunction {
  /// Searches for installed sticker sets by looking for specified query in their title and name
  SearchInstalledStickerSets(
      {required this.isMasks,
      required this.query,
      required this.limit,
      this.extra});

  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  bool isMasks;

  /// [query] Query to search for
  String query;

  /// [limit] The maximum number of sticker sets to return
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    return SearchInstalledStickerSets(
      isMasks: json['is_masks'] ?? false,
      query: json['query'] ?? "",
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "query": this.query,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
