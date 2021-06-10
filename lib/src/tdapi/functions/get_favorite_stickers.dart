part of '../tdapi.dart';

class GetFavoriteStickers extends TdFunction {
  /// Returns favorite stickers
  GetFavoriteStickers({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetFavoriteStickers.fromJson(Map<String, dynamic> json) {
    return GetFavoriteStickers(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getFavoriteStickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
