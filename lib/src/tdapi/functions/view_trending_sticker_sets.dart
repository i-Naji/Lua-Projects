part of '../tdapi.dart';

class ViewTrendingStickerSets extends TdFunction {
  /// Informs the server that some trending sticker sets have been viewed by the user
  ViewTrendingStickerSets({required this.stickerSetIds, this.extra});

  /// [stickerSetIds] Identifiers of viewed trending sticker sets
  List<int> stickerSetIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ViewTrendingStickerSets.fromJson(Map<String, dynamic> json) {
    return ViewTrendingStickerSets(
      stickerSetIds: List<int>.from(
          (json['sticker_set_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sticker_set_ids": this.stickerSetIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'viewTrendingStickerSets';

  @override
  String getConstructor() => CONSTRUCTOR;
}
