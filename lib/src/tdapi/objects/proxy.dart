part of '../tdapi.dart';

class Proxy extends TdObject {
  /// Contains information about a proxy server
  Proxy(
      {required this.id,
      required this.server,
      required this.port,
      required this.lastUsedDate,
      required this.isEnabled,
      required this.type,
      this.extra});

  /// [id] Unique identifier of the proxy
  int id;

  /// [server] Proxy server IP address
  String server;

  /// [port] Proxy server port
  int port;

  /// [lastUsedDate] Point in time (Unix timestamp) when the proxy was last used; 0 if never
  int lastUsedDate;

  /// [isEnabled] True, if the proxy is enabled now
  bool isEnabled;

  /// [type] Type of the proxy
  ProxyType type;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Proxy.fromJson(Map<String, dynamic> json) {
    return Proxy(
      id: json['id'] ?? 0,
      server: json['server'] ?? "",
      port: json['port'] ?? 0,
      lastUsedDate: json['last_used_date'] ?? 0,
      isEnabled: json['is_enabled'] ?? false,
      type: ProxyType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "server": this.server,
      "port": this.port,
      "last_used_date": this.lastUsedDate,
      "is_enabled": this.isEnabled,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'proxy';

  @override
  String getConstructor() => CONSTRUCTOR;
}
