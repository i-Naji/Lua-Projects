part of '../tdapi.dart';

class GetSavedAnimations extends TdFunction {
  /// Returns saved animations
  GetSavedAnimations({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetSavedAnimations.fromJson(Map<String, dynamic> json) {
    return GetSavedAnimations(
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

  static const CONSTRUCTOR = 'getSavedAnimations';

  @override
  String getConstructor() => CONSTRUCTOR;
}
