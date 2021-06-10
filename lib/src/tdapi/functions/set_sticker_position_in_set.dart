part of '../tdapi.dart';

class SetStickerPositionInSet extends TdFunction {
  /// Changes the position of a sticker in the set to which it belongs; for bots only. The sticker set must have been created by the bot
  SetStickerPositionInSet(
      {required this.sticker, required this.position, this.extra});

  /// [sticker] Sticker
  InputFile sticker;

  /// [position] New position of the sticker in the set, zero-based
  int position;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetStickerPositionInSet.fromJson(Map<String, dynamic> json) {
    return SetStickerPositionInSet(
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      position: json['position'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker": this.sticker.toJson(),
      "position": this.position,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setStickerPositionInSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
