part of '../tdapi.dart';

class Stickers extends TdObject {
  /// Represents a list of stickers
  Stickers({required this.stickers, this.extra});

  /// [stickers] List of stickers
  List<Sticker> stickers;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Stickers.fromJson(Map<String, dynamic> json) {
    return Stickers(
      stickers: List<Sticker>.from((json['stickers'] ?? [])
          .map((item) => Sticker.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "stickers": this.stickers.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'stickers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
