part of '../tdapi.dart';

class TMeUrls extends TdObject {
  /// Contains a list of t.me URLs
  TMeUrls({required this.urls, this.extra});

  /// [urls] List of URLs
  List<TMeUrl> urls;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory TMeUrls.fromJson(Map<String, dynamic> json) {
    return TMeUrls(
      urls: List<TMeUrl>.from((json['urls'] ?? [])
          .map((item) => TMeUrl.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "urls": this.urls.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'tMeUrls';

  @override
  String getConstructor() => CONSTRUCTOR;
}
