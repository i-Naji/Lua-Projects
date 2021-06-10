part of '../tdapi.dart';

class GetBackgroundUrl extends TdFunction {
  /// Constructs a persistent HTTP URL for a background
  GetBackgroundUrl({required this.name, required this.type, this.extra});

  /// [name] Background name
  String name;

  /// [type] Background type
  BackgroundType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetBackgroundUrl.fromJson(Map<String, dynamic> json) {
    return GetBackgroundUrl(
      name: json['name'] ?? "",
      type: BackgroundType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "name": this.name,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getBackgroundUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
