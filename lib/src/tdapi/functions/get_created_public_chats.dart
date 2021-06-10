part of '../tdapi.dart';

class GetCreatedPublicChats extends TdFunction {
  /// Returns a list of public chats of the specified type, owned by the user
  GetCreatedPublicChats({required this.type, this.extra});

  /// [type] Type of the public chats to return
  PublicChatType type;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetCreatedPublicChats.fromJson(Map<String, dynamic> json) {
    return GetCreatedPublicChats(
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

  static const CONSTRUCTOR = 'getCreatedPublicChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
