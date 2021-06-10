part of '../tdapi.dart';

class GetStickers extends TdFunction {
  /// Returns stickers from the installed sticker sets that correspond to a given emoji. If the emoji is not empty, favorite and recently used stickers may also be returned
  GetStickers({required this.emoji, required this.limit, this.extra});

  /// [emoji] String representation of emoji. If empty, returns all known installed stickers
  String emoji;

  /// [limit] The maximum number of stickers to be returned
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStickers.fromJson(Map<String, dynamic> json) {
    return GetStickers(
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

  static const CONSTRUCTOR = 'getStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
