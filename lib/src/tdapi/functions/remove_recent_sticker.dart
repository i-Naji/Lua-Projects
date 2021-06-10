part of '../tdapi.dart';

class RemoveRecentSticker extends TdFunction {
  /// Removes a sticker from the list of recently used stickers
  RemoveRecentSticker(
      {required this.isAttached, required this.sticker, this.extra});

  /// [isAttached] Pass true to remove the sticker from the list of stickers recently attached to photo or video files; pass false to remove the sticker from the list of recently sent stickers
  bool isAttached;

  /// [sticker] Sticker file to delete
  InputFile sticker;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveRecentSticker.fromJson(Map<String, dynamic> json) {
    return RemoveRecentSticker(
      isAttached: json['is_attached'] ?? false,
      sticker: InputFile.fromJson(json['sticker'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_attached": this.isAttached,
      "sticker": this.sticker.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeRecentSticker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
