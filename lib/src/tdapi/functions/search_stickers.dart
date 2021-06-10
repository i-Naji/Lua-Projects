part of '../tdapi.dart';

class SearchStickers extends TdFunction {
  /// Searches for stickers from public sticker sets that correspond to a given emoji
  SearchStickers({required this.emoji, required this.limit, this.extra});

  /// [emoji] String representation of emoji; must be non-empty
  String emoji;

  /// [limit] The maximum number of stickers to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchStickers.fromJson(Map<String, dynamic> json) {
    return SearchStickers(
      emoji: json['emoji'] ?? "",
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emoji": this.emoji,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
