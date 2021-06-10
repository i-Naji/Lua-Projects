part of '../tdapi.dart';

class GetArchivedStickerSets extends TdFunction {
  /// Returns a list of archived sticker sets
  GetArchivedStickerSets(
      {required this.isMasks,
      required this.offsetStickerSetId,
      required this.limit,
      this.extra});

  /// [isMasks] Pass true to return mask stickers sets; pass false to return ordinary sticker sets
  bool isMasks;

  /// [offsetStickerSetId] Identifier of the sticker set from which to return the result
  int offsetStickerSetId;

  /// [limit] The maximum number of sticker sets to return
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetArchivedStickerSets.fromJson(Map<String, dynamic> json) {
    return GetArchivedStickerSets(
      isMasks: json['is_masks'] ?? false,
      offsetStickerSetId:
          int.tryParse(json['offset_sticker_set_id'] ?? "") ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "offset_sticker_set_id": this.offsetStickerSetId,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getArchivedStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
