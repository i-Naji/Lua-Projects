part of '../tdapi.dart';

class RemoveStickerFromSet extends TdFunction {
  /// Removes a sticker from the set to which it belongs; for bots only. The sticker set must have been created by the bot
  RemoveStickerFromSet({required this.sticker, this.extra});

  /// [sticker] Sticker
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveStickerFromSet.fromJson(Map<String, dynamic> json) {
    return RemoveStickerFromSet(
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

  static const CONSTRUCTOR = 'removeStickerFromSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
