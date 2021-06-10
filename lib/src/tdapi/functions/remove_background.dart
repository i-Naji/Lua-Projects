part of '../tdapi.dart';

class RemoveBackground extends TdFunction {
  /// Removes background from the list of installed backgrounds
  RemoveBackground({required this.backgroundId, this.extra});

  /// [backgroundId] The background identifier
  int backgroundId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveBackground.fromJson(Map<String, dynamic> json) {
    return RemoveBackground(
      backgroundId: int.tryParse(json['background_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "background_id": this.backgroundId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeBackground';

  @override
  String getConstructor() => CONSTRUCTOR;
}
