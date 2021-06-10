part of '../tdapi.dart';

class TMeUrl extends TdObject {
  /// Represents a URL linking to an internal Telegram entity
  TMeUrl({required this.url, required this.type});

  /// [url] URL
  String url;

  /// [type] Type of the URL
  TMeUrlType type;

  /// Parse from a json
  factory TMeUrl.fromJson(Map<String, dynamic> json) {
    return TMeUrl(
      url: json['url'] ?? "",
      type: TMeUrlType.fromJson(json['type'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'tMeUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
