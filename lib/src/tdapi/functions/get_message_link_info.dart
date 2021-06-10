part of '../tdapi.dart';

class GetMessageLinkInfo extends TdFunction {
  /// Returns information about a public or private message link
  GetMessageLinkInfo({required this.url, this.extra});

  /// [url] The message link in the format "https://t.me/c/...", or "tg://privatepost?...", or "https://t.me/username/...", or "tg://resolve?..."
  String url;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetMessageLinkInfo.fromJson(Map<String, dynamic> json) {
    return GetMessageLinkInfo(
      url: json['url'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getMessageLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
