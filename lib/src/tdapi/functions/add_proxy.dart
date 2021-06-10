part of '../tdapi.dart';

class AddProxy extends TdFunction {
  /// Adds a proxy server for network requests. Can be called before authorization
  AddProxy(
      {required this.server,
      required this.port,
      required this.enable,
      required this.type,
      this.extra});

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
  factory AddProxy.fromJson(Map<String, dynamic> json) {
    return AddProxy(
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
      "server": this.server,
      "port": this.port,
      "enable": this.enable,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addProxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
