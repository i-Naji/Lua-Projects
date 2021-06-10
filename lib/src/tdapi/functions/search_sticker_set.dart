part of '../tdapi.dart';

class SearchStickerSet extends TdFunction {
  /// Searches for a sticker set by its name
  SearchStickerSet({required this.name, this.extra});

  /// [name] Name of the sticker set
  String name;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SearchStickerSet.fromJson(Map<String, dynamic> json) {
    return SearchStickerSet(
      name: json['name'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'searchStickerSet';

  @override
  String getConstructor() => CONSTRUCTOR;
}
