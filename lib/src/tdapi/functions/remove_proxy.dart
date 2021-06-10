part of '../tdapi.dart';

class RemoveProxy extends TdFunction {
  /// Removes a proxy server. Can be called before authorization
  RemoveProxy({required this.proxyId, this.extra});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveProxy.fromJson(Map<String, dynamic> json) {
    return RemoveProxy(
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

  static const CONSTRUCTOR = 'removeProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
