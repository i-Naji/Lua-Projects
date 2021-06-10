part of '../tdapi.dart';

class EditProxy extends TdFunction {
  /// Edits an existing proxy server for network requests. Can be called before authorization
  EditProxy(
      {required this.proxyId,
      required this.server,
      required this.port,
      required this.enable,
      required this.type,
      this.extra});

  /// [proxyId] Proxy identifier
  int proxyId;

  /// [server] Proxy server IP address
  String server;

  /// [port] Proxy server port
  int port;

  /// [enable] True, if the proxy should be enabled
  bool enable;

  /// [type] Proxy type
  ProxyType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditProxy.fromJson(Map<String, dynamic> json) {
    return EditProxy(
      proxyId: json['proxy_id'] ?? 0,
      server: json['server'] ?? "",
      port: json['port'] ?? 0,
      enable: json['enable'] ?? false,
      type: ProxyType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxy_id": this.proxyId,
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
