part of '../tdapi.dart';

class GetPassportAuthorizationForm extends TdFunction {
  /// Returns a Telegram Passport authorization form for sharing data with a service
  GetPassportAuthorizationForm(
      {required this.botUserId,
      required this.scope,
      required this.publicKey,
      required this.nonce,
      this.extra});

  /// [botUserId] User identifier of the service's bot
  int botUserId;

  /// [scope] Telegram Passport element types requested by the service
  String scope;

  /// [publicKey] Service's public_key
  String publicKey;

  /// [nonce] Authorization form nonce provided by the service
  String nonce;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetPassportAuthorizationForm.fromJson(Map<String, dynamic> json) {
    return GetPassportAuthorizationForm(
      botUserId: json['bot_user_id'] ?? 0,
      scope: json['scope'] ?? "",
      publicKey: json['public_key'] ?? "",
      nonce: json['nonce'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "bot_user_id": this.botUserId,
      "scope": this.scope,
      "public_key": this.publicKey,
      "nonce": this.nonce,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getPassportAuthorizationForm';

  @override
  String getConstructor() => CONSTRUCTOR;
}
