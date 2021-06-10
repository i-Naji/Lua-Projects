part of '../tdapi.dart';

class UploadStickerFile extends TdFunction {
  /// Uploads a PNG image with a sticker; for bots only; returns the uploaded file
  UploadStickerFile(
      {required this.userId, required this.pngSticker, this.extra});

  /// [userId] Sticker file owner
  int userId;

  /// [pngSticker] PNG image with the sticker; must be up to 512 KB in size and fit in 512x512 square
  InputFile pngSticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory UploadStickerFile.fromJson(Map<String, dynamic> json) {
    return UploadStickerFile(
      userId: json['user_id'] ?? 0,
      pngSticker:
          InputFile.fromJson(json['png_sticker'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "png_sticker": this.pngSticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'uploadStickerFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
