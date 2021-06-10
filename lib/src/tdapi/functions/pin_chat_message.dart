part of '../tdapi.dart';

class PinChatMessage extends TdFunction {
  /// Pins a message in a chat; requires can_pin_messages rights or can_edit_messages rights in the channel
  PinChatMessage(
      {required this.chatId,
      required this.messageId,
      required this.disableNotification,
      required this.onlyForSelf,
      this.extra});

  /// [chatId] Identifier of the chat
  int chatId;

  /// [messageId] Identifier of the new pinned message
  int messageId;

  /// [disableNotification] True, if there should be no notification about the pinned message. Notifications are always disabled in channels and private chats
  bool disableNotification;

  /// [onlyForSelf] True, if the message needs to be pinned for one side only; private chats only
  bool onlyForSelf;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory PinChatMessage.fromJson(Map<String, dynamic> json) {
    return PinChatMessage(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      disableNotification: json['disable_notification'] ?? false,
      onlyForSelf: json['only_for_self'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "disable_notification": this.disableNotification,
      "only_for_self": this.onlyForSelf,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'pinChatMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
