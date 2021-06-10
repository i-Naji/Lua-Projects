part of '../tdapi.dart';

class RemoveSavedAnimation extends TdFunction {
  /// Removes an animation from the list of saved animations
  RemoveSavedAnimation({required this.animation, this.extra});

  /// [animation] Animation file to be removed
  InputFile animation;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveSavedAnimation.fromJson(Map<String, dynamic> json) {
    return RemoveSavedAnimation(
      animation: InputFile.fromJson(json['animation'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "animation": this.animation.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeSavedAnimation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
