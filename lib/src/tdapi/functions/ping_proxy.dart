part of '../tdapi.dart';

class PingProxy extends TdFunction {
  /// Computes time needed to receive a response from a Telegram server through a proxy. Can be called before authorization
  PingProxy({required this.proxyId, this.extra});

  /// [proxyId] Proxy identifier. Use 0 to ping a Telegram server without a proxy
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory PingProxy.fromJson(Map<String, dynamic> json) {
    return PingProxy(
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

  static const CONSTRUCTOR = 'pingProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
