part of '../tdapi.dart';

class CreateNewStickerSet extends TdFunction {
  /// Creates a new sticker set; for bots only. Returns the newly created sticker set
  CreateNewStickerSet(
      {required this.userId,
      required this.title,
      required this.name,
      required this.isMasks,
      required this.stickers,
      this.extra});

  /// [userId] Sticker set owner
  int userId;

  /// [title] Sticker set title; 1-64 characters
  String title;

  /// [name] Sticker set name. Can contain only English letters, digits and underscores. Must end with *"_by_
  String name;

  /// [isMasks] True, if stickers are masks. Animated stickers can't be masks
  bool isMasks;

  /// [stickers] List of stickers to be added to the set; must be non-empty. All stickers must be of the same type
  List<InputSticker> stickers;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateNewStickerSet.fromJson(Map<String, dynamic> json) {
    return CreateNewStickerSet(
      userId: json['user_id'] ?? 0,
      title: json['title'] ?? "",
      name: json['name'] ?? "",
      isMasks: json['is_masks'] ?? false,
      stickers: List<InputSticker>.from((json['stickers'] ?? [])
          .map((item) => InputSticker.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "title": this.title,
      "name": this.name,
      "is_masks": this.isMasks,
      "stickers": this.stickers.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
