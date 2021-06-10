part of '../tdapi.dart';

class InputSticker extends TdObject {
  /// Describes a sticker that needs to be added to a sticker set
  InputSticker();

  /// a InputSticker return type can be :
  /// * InputStickerStatic
  /// * InputStickerAnimated
  factory InputSticker.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case InputStickerStatic.CONSTRUCTOR:
        return InputStickerStatic.fromJson(json);
      case InputStickerAnimated.CONSTRUCTOR:
        return InputStickerAnimated.fromJson(json);
      default:
        return InputSticker();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'inputSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputStickerStatic extends InputSticker {
  /// A static sticker in PNG format, which will be converted to WEBP server-side
  InputStickerStatic(
      {required this.sticker, required this.emojis, this.maskPosition});

  /// [sticker] PNG image with the sticker; must be up to 512 KB in size and fit in a 512x512 square
  InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  String emojis;

  /// [maskPosition] For masks, position where the mask should be placed; may be null
  MaskPosition? maskPosition;

  /// Parse from a json
  factory InputStickerStatic.fromJson(Map<String, dynamic> json) {
    return InputStickerStatic(
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      emojis: json['emojis'] ?? "",
      maskPosition:
          MaskPosition.fromJson(json['mask_position'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "emojis": this.emojis,
      "mask_position":
          this.maskPosition == null ? null : this.maskPosition!.toJson(),
    };
  }

  static const CONSTRUCTOR = 'inputStickerStatic';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class InputStickerAnimated extends InputSticker {
  /// An animated sticker in TGS format
  InputStickerAnimated({required this.sticker, required this.emojis});

  /// [sticker] File with the animated sticker. Only local or uploaded within a week files are supported. See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements
  InputFile sticker;

  /// [emojis] Emojis corresponding to the sticker
  String emojis;

  /// Parse from a json
  factory InputStickerAnimated.fromJson(Map<String, dynamic> json) {
    return InputStickerAnimated(
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      emojis: json['emojis'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "emojis": this.emojis,
    };
  }

  static const CONSTRUCTOR = 'inputStickerAnimated';

  @override
  String getConstructor() => CONSTRUCTOR;
}
