part of '../tdapi.dart';

class CallServer extends TdObject {
  /// Describes a server for relaying call data
  CallServer(
      {required this.id,
      required this.ipAddress,
      required this.ipv6Address,
      required this.port,
      required this.type});

  /// [id] Server identifier
  int id;

  /// [ipAddress] Server IPv4 address
  String ipAddress;

  /// [ipv6Address] Server IPv6 address
  String ipv6Address;

  /// [port] Server port number
  int port;

  /// [type] Server type
  CallServerType type;

  /// Parse from a json
  factory CallServer.fromJson(Map<String, dynamic> json) {
    return CallServer(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      ipAddress: json['ip_address'] ?? "",
      ipv6Address: json['ipv6_address'] ?? "",
      port: json['port'] ?? 0,
      type: CallServerType.fromJson(json['type'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "ip_address": this.ipAddress,
      "ipv6_address": this.ipv6Address,
      "port": this.port,
      "type": this.type.toJson(),
    };
  }

  static const CONSTRUCTOR = 'callServer';

  @override
  String getConstructor() => CONSTRUCTOR;
}
