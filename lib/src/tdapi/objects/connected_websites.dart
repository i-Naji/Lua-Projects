part of '../tdapi.dart';

class ConnectedWebsites extends TdObject {
  /// Contains a list of websites the current user is logged in with Telegram
  ConnectedWebsites({required this.websites, this.extra});

  /// [websites] List of connected websites
  List<ConnectedWebsite> websites;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ConnectedWebsites.fromJson(Map<String, dynamic> json) {
    return ConnectedWebsites(
      websites: List<ConnectedWebsite>.from((json['websites'] ?? [])
          .map((item) => ConnectedWebsite.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "websites": this.websites.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'connectedWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
