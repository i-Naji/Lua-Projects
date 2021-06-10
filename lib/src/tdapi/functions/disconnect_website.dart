part of '../tdapi.dart';

class DisconnectWebsite extends TdFunction {
  /// Disconnects website from the current user's Telegram account
  DisconnectWebsite({required this.websiteId, this.extra});

  /// [websiteId] Website identifier
  int websiteId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DisconnectWebsite.fromJson(Map<String, dynamic> json) {
    return DisconnectWebsite(
      websiteId: int.tryParse(json['website_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "website_id": this.websiteId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'disconnectWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
}
