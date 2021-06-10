part of '../tdapi.dart';

class SetAccountTtl extends TdFunction {
  /// Changes the period of inactivity after which the account of the current user will automatically be deleted
  SetAccountTtl({required this.ttl, this.extra});

  /// [ttl] New account TTL
  AccountTtl ttl;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetAccountTtl.fromJson(Map<String, dynamic> json) {
    return SetAccountTtl(
      ttl: AccountTtl.fromJson(json['ttl'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "ttl": this.ttl.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setAccountTtl';

  @override
  String getConstructor() => CONSTRUCTOR;
}
