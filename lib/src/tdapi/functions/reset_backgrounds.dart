part of '../tdapi.dart';

class ResetBackgrounds extends TdFunction {
  /// Resets list of installed backgrounds to its default value
  ResetBackgrounds({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ResetBackgrounds.fromJson(Map<String, dynamic> json) {
    return ResetBackgrounds(
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

  static const CONSTRUCTOR = 'resetBackgrounds';

  @override
  String getConstructor() => CONSTRUCTOR;
}
