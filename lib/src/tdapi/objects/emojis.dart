part of '../tdapi.dart';

class Emojis extends TdObject {
  /// Represents a list of emoji
  Emojis({required this.emojis, this.extra});

  /// [emojis] List of emojis
  List<String> emojis;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Emojis.fromJson(Map<String, dynamic> json) {
    return Emojis(
      emojis: List<String>.from(
          (json['emojis'] ?? []).map((item) => item ?? "").toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "emojis": this.emojis.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'emojis';

  @override
  String getConstructor() => CONSTRUCTOR;
}
