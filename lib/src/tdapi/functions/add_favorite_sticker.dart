part of '../tdapi.dart';

class AddFavoriteSticker extends TdFunction {
  /// Adds a new sticker to the list of favorite stickers. The new sticker is added to the top of the list. If the sticker was already in the list, it is removed from the list first. Only stickers belonging to a sticker set can be added to this list
  AddFavoriteSticker({required this.sticker, this.extra});

  /// [sticker] Sticker file to add
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddFavoriteSticker.fromJson(Map<String, dynamic> json) {
    return AddFavoriteSticker(
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

  static const CONSTRUCTOR = 'addFavoriteSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
