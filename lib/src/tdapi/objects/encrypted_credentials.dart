part of '../tdapi.dart';

class EncryptedCredentials extends TdObject {
  /// Contains encrypted Telegram Passport data credentials
  EncryptedCredentials(
      {required this.data, required this.hash, required this.secret});

  /// [data] The encrypted credentials
  String data;

  /// [hash] The decrypted data hash
  String hash;

  /// [secret] Secret for data decryption, encrypted with the service's public key
  String secret;

  /// Parse from a json
  factory EncryptedCredentials.fromJson(Map<String, dynamic> json) {
    return EncryptedCredentials(
      data: json['data'] ?? "",
      hash: json['hash'] ?? "",
      secret: json['secret'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "data": this.data,
      "hash": this.hash,
      "secret": this.secret,
    };
  }

  static const CONSTRUCTOR = 'encryptedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}
