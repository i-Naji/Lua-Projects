part of '../tdapi.dart';

class HttpUrl extends TdObject {
  /// Contains an HTTP URL
  HttpUrl({required this.url, this.extra});

  /// [url] The URL
  String url;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory HttpUrl.fromJson(Map<String, dynamic> json) {
    return HttpUrl(
      url: json['url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
    };
  }

  static const CONSTRUCTOR = 'httpUrl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
