part of '../tdapi.dart';

class GetBackgrounds extends TdFunction {
  /// Returns backgrounds installed by the user
  GetBackgrounds({required this.forDarkTheme, this.extra});

  /// [forDarkTheme] True, if the backgrounds must be ordered for dark theme
  bool forDarkTheme;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetBackgrounds.fromJson(Map<String, dynamic> json) {
    return GetBackgrounds(
      forDarkTheme: json['for_dark_theme'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "for_dark_theme": this.forDarkTheme,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
