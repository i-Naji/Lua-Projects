part of '../tdapi.dart';

class CheckDatabaseEncryptionKey extends TdFunction {
  /// Checks the database encryption key for correctness. Works only when the current authorization state is authorizationStateWaitEncryptionKey
  CheckDatabaseEncryptionKey({required this.encryptionKey, this.extra});

  /// [encryptionKey] Encryption key to check or set up
  String encryptionKey;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) {
    return CheckDatabaseEncryptionKey(
      encryptionKey: json['encryption_key'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "encryption_key": this.encryptionKey,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
}
