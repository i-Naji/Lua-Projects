part of '../tdapi.dart';

class Backgrounds extends TdObject {
  /// Contains a list of backgrounds
  Backgrounds({required this.backgrounds, this.extra});

  /// [backgrounds] A list of backgrounds
  List<Background> backgrounds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Backgrounds.fromJson(Map<String, dynamic> json) {
    return Backgrounds(
      backgrounds: List<Background>.from((json['backgrounds'] ?? [])
          .map((item) => Background.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "backgrounds": this.backgrounds.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'backgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
