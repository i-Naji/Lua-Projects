part of '../tdapi.dart';

class GetProxyLink extends TdFunction {
  /// Returns an HTTPS link, which can be used to add a proxy. Available only for SOCKS5 and MTProto proxies. Can be called before authorization
  GetProxyLink({required this.proxyId, this.extra});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetProxyLink.fromJson(Map<String, dynamic> json) {
    return GetProxyLink(
      proxyId: json['proxy_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getProxyLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
