part of '../tdapi.dart';

class CheckCreatedPublicChatsLimit extends TdFunction {
  /// Checks whether the maximum number of owned public chats has been reached. Returns corresponding error if the limit was reached
  CheckCreatedPublicChatsLimit({required this.type, this.extra});

  /// [type] Type of the public chats, for which to check the limit
  PublicChatType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckCreatedPublicChatsLimit.fromJson(Map<String, dynamic> json) {
    return CheckCreatedPublicChatsLimit(
      type: PublicChatType.fromJson(json['type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "type": this.type.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkCreatedPublicChatsLimit';

  @override
  String getConstructor() => CONSTRUCTOR;
}
