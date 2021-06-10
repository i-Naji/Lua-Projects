part of '../tdapi.dart';

class SetChatLocation extends TdFunction {
  /// Changes the location of a chat. Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the method is allowed to use
  SetChatLocation({required this.chatId, this.location, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [location] New location for the chat; must be valid and not null
  ChatLocation? location;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatLocation.fromJson(Map<String, dynamic> json) {
    return SetChatLocation(
      chatId: json['chat_id'] ?? 0,
      location: ChatLocation.fromJson(json['location'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "location": this.location == null ? null : this.location!.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatLocation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
