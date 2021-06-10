part of '../tdapi.dart';

class ReorderInstalledStickerSets extends TdFunction {
  /// Changes the order of installed sticker sets
  ReorderInstalledStickerSets(
      {required this.isMasks, required this.stickerSetIds, this.extra});

  /// [isMasks] Pass true to change the order of mask sticker sets; pass false to change the order of ordinary sticker sets
  bool isMasks;

  /// [stickerSetIds] Identifiers of installed sticker sets in the new correct order
  List<int> stickerSetIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReorderInstalledStickerSets.fromJson(Map<String, dynamic> json) {
    return ReorderInstalledStickerSets(
      isMasks: json['is_masks'] ?? false,
      stickerSetIds: List<int>.from(
          (json['sticker_set_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_masks": this.isMasks,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reorderInstalledStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
