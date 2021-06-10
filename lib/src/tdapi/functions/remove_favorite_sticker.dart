part of '../tdapi.dart';

class RemoveFavoriteSticker extends TdFunction {
  /// Removes a sticker from the list of favorite stickers
  RemoveFavoriteSticker({required this.sticker, this.extra});

  /// [sticker] Sticker file to delete from the list
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveFavoriteSticker.fromJson(Map<String, dynamic> json) {
    return RemoveFavoriteSticker(
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

  static const CONSTRUCTOR = 'removeFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
