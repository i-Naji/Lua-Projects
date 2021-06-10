part of '../tdapi.dart';

class GetStickerSet extends TdFunction {
  /// Returns information about a sticker set by its identifier
  GetStickerSet({required this.setId, this.extra});

  /// [setId] Identifier of the sticker set
  int setId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStickerSet.fromJson(Map<String, dynamic> json) {
    return GetStickerSet(
      setId: int.tryParse(json['set_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "set_id": this.setId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
