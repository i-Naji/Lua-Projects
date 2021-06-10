part of '../tdapi.dart';

class GetDeepLinkInfo extends TdFunction {
  /// Returns information about a tg:// deep link. Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing. Returns a 404 error for unknown links. Can be called before authorization
  GetDeepLinkInfo({required this.link, this.extra});

  /// [link] The link
  String link;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetDeepLinkInfo.fromJson(Map<String, dynamic> json) {
    return GetDeepLinkInfo(
      link: json['link'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getDeepLinkInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
