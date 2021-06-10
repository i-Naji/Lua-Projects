part of '../tdapi.dart';

class SetSupergroupStickerSet extends TdFunction {
  /// Changes the sticker set of a supergroup; requires can_change_info rights
  SetSupergroupStickerSet(
      {required this.supergroupId, required this.stickerSetId, this.extra});

  /// [supergroupId] Identifier of the supergroup
  int supergroupId;

  /// [stickerSetId] New value of the supergroup sticker set identifier. Use 0 to remove the supergroup sticker set
  int stickerSetId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetSupergroupStickerSet.fromJson(Map<String, dynamic> json) {
    return SetSupergroupStickerSet(
      supergroupId: json['supergroup_id'] ?? 0,
      stickerSetId: int.tryParse(json['sticker_set_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "sticker_set_id": this.stickerSetId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setSupergroupStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
