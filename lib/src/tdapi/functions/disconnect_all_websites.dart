part of '../tdapi.dart';

class DisconnectAllWebsites extends TdFunction {
  /// Disconnects all websites from the current user's Telegram account
  DisconnectAllWebsites({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DisconnectAllWebsites.fromJson(Map<String, dynamic> json) {
    return DisconnectAllWebsites(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'disconnectAllWebsites';

  @override
  String getConstructor() => CONSTRUCTOR;
}
