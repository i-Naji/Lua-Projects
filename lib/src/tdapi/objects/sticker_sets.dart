part of '../tdapi.dart';

class StickerSets extends TdObject {
  /// Represents a list of sticker sets
  StickerSets({required this.totalCount, required this.sets, this.extra});

  /// [totalCount] Approximate total number of sticker sets found
  int totalCount;

  /// [sets] List of sticker sets
  List<StickerSetInfo> sets;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StickerSets.fromJson(Map<String, dynamic> json) {
    return StickerSets(
      totalCount: json['total_count'] ?? 0,
      sets: List<StickerSetInfo>.from((json['sets'] ?? [])
          .map((item) => StickerSetInfo.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "sets": this.sets.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
