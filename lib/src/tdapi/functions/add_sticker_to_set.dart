part of '../tdapi.dart';

class AddStickerToSet extends TdFunction {
  /// Adds a new sticker to a set; for bots only. Returns the sticker set
  AddStickerToSet(
      {required this.userId,
      required this.name,
      required this.sticker,
      this.extra});

  /// [userId] Sticker set owner
  int userId;

  /// [name] Sticker set name
  String name;

  /// [sticker] Sticker to add to the set
  InputSticker sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddStickerToSet.fromJson(Map<String, dynamic> json) {
    return AddStickerToSet(
      userId: json['user_id'] ?? 0,
      name: json['name'] ?? "",
      sticker: InputSticker.fromJson(json['sticker'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "name": this.name,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addStickerToSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
