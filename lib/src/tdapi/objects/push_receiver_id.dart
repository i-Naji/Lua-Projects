part of '../tdapi.dart';

class PushReceiverId extends TdObject {
  /// Contains a globally unique push receiver identifier, which can be used to identify which account has received a push notification
  PushReceiverId({required this.id, this.extra});

  /// [id] The globally unique identifier of push notification subscription
  int id;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory PushReceiverId.fromJson(Map<String, dynamic> json) {
    return PushReceiverId(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
    };
  }

  static const CONSTRUCTOR = 'pushReceiverId';

  @override
  String getConstructor() => CONSTRUCTOR;
}
