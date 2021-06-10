part of '../tdapi.dart';

class GetInstalledStickerSets extends TdFunction {
  /// Returns a list of installed sticker sets
  GetInstalledStickerSets({required this.isMasks, this.extra});

  /// [isMasks] Pass true to return mask sticker sets; pass false to return ordinary sticker sets
  bool isMasks;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    return GetInstalledStickerSets(
      isMasks: json['is_masks'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
