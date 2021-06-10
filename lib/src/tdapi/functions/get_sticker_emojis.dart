part of '../tdapi.dart';

class GetStickerEmojis extends TdFunction {
  /// Returns emoji corresponding to a sticker. The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the corresponding Sticker object
  GetStickerEmojis({required this.sticker, this.extra});

  /// [sticker] Sticker file identifier
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStickerEmojis.fromJson(Map<String, dynamic> json) {
    return GetStickerEmojis(
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStickerEmojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
