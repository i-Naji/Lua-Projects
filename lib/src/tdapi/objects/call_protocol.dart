part of '../tdapi.dart';

class CallProtocol extends TdObject {
  /// Specifies the supported call protocols
  CallProtocol(
      {required this.udpP2p,
      required this.udpReflector,
      required this.minLayer,
      required this.maxLayer,
      required this.libraryVersions});

  /// [udpP2p] True, if UDP peer-to-peer connections are supported
  bool udpP2p;

  /// [udpReflector] True, if connection through UDP reflectors is supported
  bool udpReflector;

  /// [minLayer] The minimum supported API layer; use 65
  int minLayer;

  /// [maxLayer] The maximum supported API layer; use 65
  int maxLayer;

  /// [libraryVersions] List of supported tgcalls versions
  List<String> libraryVersions;

  /// Parse from a json
  factory CallProtocol.fromJson(Map<String, dynamic> json) {
    return CallProtocol(
      udpP2p: json['udp_p2p'] ?? false,
      udpReflector: json['udp_reflector'] ?? false,
      minLayer: json['min_layer'] ?? 0,
      maxLayer: json['max_layer'] ?? 0,
      libraryVersions: List<String>.from(
          (json['library_versions'] ?? []).map((item) => item ?? "").toList()),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "udp_p2p": this.udpP2p,
      "udp_reflector": this.udpReflector,
      "min_layer": this.minLayer,
      "max_layer": this.maxLayer,
      "library_versions": this.libraryVersions.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'callProtocol';

  @override
  String getConstructor() => CONSTRUCTOR;
}
