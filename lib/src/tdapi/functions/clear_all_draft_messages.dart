part of '../tdapi.dart';

class ClearAllDraftMessages extends TdFunction {
  /// Clears draft messages in all chats
  ClearAllDraftMessages({required this.excludeSecretChats, this.extra});

  /// [excludeSecretChats] If true, local draft messages in secret chats will not be cleared
  bool excludeSecretChats;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ClearAllDraftMessages.fromJson(Map<String, dynamic> json) {
    return ClearAllDraftMessages(
      excludeSecretChats: json['exclude_secret_chats'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "exclude_secret_chats": this.excludeSecretChats,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'clearAllDraftMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
