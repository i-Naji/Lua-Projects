part of '../tdapi.dart';

class Animations extends TdObject {
  /// Represents a list of animations
  Animations({required this.animations, this.extra});

  /// [animations] List of animations
  List<Animation> animations;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Animations.fromJson(Map<String, dynamic> json) {
    return Animations(
      animations: List<Animation>.from((json['animations'] ?? [])
          .map((item) => Animation.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animations": this.animations.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'animations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
