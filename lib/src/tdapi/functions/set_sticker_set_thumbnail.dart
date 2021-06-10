part of '../tdapi.dart';

class SetStickerSetThumbnail extends TdFunction {
  /// Sets a sticker set thumbnail; for bots only. Returns the sticker set
  SetStickerSetThumbnail(
      {required this.userId,
      required this.name,
      required this.thumbnail,
      this.extra});

  /// [userId] Sticker set owner
  int userId;

  /// [name] Sticker set name
  String name;

  /// [thumbnail] Thumbnail to set in PNG or TGS format. Animated thumbnail must be set for animated sticker sets and only for them. Pass a zero InputFileId to delete the thumbnail
  InputFile thumbnail;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetStickerSetThumbnail.fromJson(Map<String, dynamic> json) {
    return SetStickerSetThumbnail(
      userId: json['user_id'] ?? 0,
      name: json['name'] ?? "",
      thumbnail: InputFile.fromJson(json['thumbnail'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "name": this.name,
      "thumbnail": this.thumbnail.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setStickerSetThumbnail';

  @override
  String getConstructor() => CONSTRUCTOR;
}
