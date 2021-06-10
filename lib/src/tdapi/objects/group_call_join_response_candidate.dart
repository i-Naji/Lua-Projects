part of '../tdapi.dart';

class GroupCallJoinResponseCandidate extends TdObject {
  /// Describes a join response candidate for interaction with tgcalls
  GroupCallJoinResponseCandidate(
      {required this.port,
      required this.protocol,
      required this.network,
      required this.generation,
      required this.id,
      required this.component,
      required this.foundation,
      required this.priority,
      required this.ip,
      required this.type,
      required this.tcpType,
      required this.relAddr,
      required this.relPort});

  /// [port] Value of the field port
  String port;

  /// [protocol] Value of the field protocol
  String protocol;

  /// [network] Value of the field network
  String network;

  /// [generation] Value of the field generation
  String generation;

  /// [id] Value of the field id
  String id;

  /// [component] Value of the field component
  String component;

  /// [foundation] Value of the field foundation
  String foundation;

  /// [priority] Value of the field priority
  String priority;

  /// [ip] Value of the field ip
  String ip;

  /// [type] Value of the field type
  String type;

  /// [tcpType] Value of the field tcp_type
  String tcpType;

  /// [relAddr] Value of the field rel_addr
  String relAddr;

  /// [relPort] Value of the field rel_port
  String relPort;

  /// Parse from a json
  factory GroupCallJoinResponseCandidate.fromJson(Map<String, dynamic> json) {
    return GroupCallJoinResponseCandidate(
      port: json['port'] ?? "",
      protocol: json['protocol'] ?? "",
      network: json['network'] ?? "",
      generation: json['generation'] ?? "",
      id: json['id'] ?? "",
      component: json['component'] ?? "",
      foundation: json['foundation'] ?? "",
      priority: json['priority'] ?? "",
      ip: json['ip'] ?? "",
      type: json['type'] ?? "",
      tcpType: json['tcp_type'] ?? "",
      relAddr: json['rel_addr'] ?? "",
      relPort: json['rel_port'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "port": this.port,
      "protocol": this.protocol,
      "network": this.network,
      "generation": this.generation,
      "id": this.id,
      "component": this.component,
      "foundation": this.foundation,
      "priority": this.priority,
      "ip": this.ip,
      "type": this.type,
      "tcp_type": this.tcpType,
      "rel_addr": this.relAddr,
      "rel_port": this.relPort,
    };
  }

  static const CONSTRUCTOR = 'groupCallJoinResponseCandidate';

  @override
  String getConstructor() => CONSTRUCTOR;
}
