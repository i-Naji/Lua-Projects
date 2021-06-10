part of '../tdapi.dart';

class EnableProxy extends TdFunction {
  /// Enables a proxy. Only one proxy can be enabled at a time. Can be called before authorization
  EnableProxy({required this.proxyId, this.extra});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EnableProxy.fromJson(Map<String, dynamic> json) {
    return EnableProxy(
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

  static const CONSTRUCTOR = 'enableProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
