part of '../tdapi.dart';

class Proxies extends TdObject {
  /// Represents a list of proxy servers
  Proxies({required this.proxies, this.extra});

  /// [proxies] List of proxy servers
  List<Proxy> proxies;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Proxies.fromJson(Map<String, dynamic> json) {
    return Proxies(
      proxies: List<Proxy>.from((json['proxies'] ?? [])
          .map((item) => Proxy.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "proxies": this.proxies.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'proxies';

  @override
  String getConstructor() => CONSTRUCTOR;
}
