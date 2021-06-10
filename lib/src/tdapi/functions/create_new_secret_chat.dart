part of '../tdapi.dart';

class CreateNewSecretChat extends TdFunction {
  /// Creates a new secret chat. Returns the newly created chat
  CreateNewSecretChat({required this.userId, this.extra});

  /// [userId] Identifier of the target user
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateNewSecretChat.fromJson(Map<String, dynamic> json) {
    return CreateNewSecretChat(
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createNewSecretChat';

  @override
  String getConstructor() => CONSTRUCTOR;
}
