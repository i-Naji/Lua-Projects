part of '../tdapi.dart';

class SetDatabaseEncryptionKey extends TdFunction {
  /// Changes the database encryption key. Usually the encryption key is never changed and is stored in some OS keychain
  SetDatabaseEncryptionKey({required this.newEncryptionKey, this.extra});

  /// [newEncryptionKey] New encryption key
  String newEncryptionKey;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetDatabaseEncryptionKey.fromJson(Map<String, dynamic> json) {
    return SetDatabaseEncryptionKey(
      newEncryptionKey: json['new_encryption_key'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "new_encryption_key": this.newEncryptionKey,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setDatabaseEncryptionKey';

  @override
  String getConstructor() => CONSTRUCTOR;
}
