part of '../tdapi.dart';

class AddLocalMessage extends TdFunction {
  /// Adds a local message to a chat. The message is persistent across application restarts only if the message database is used. Returns the added message
  AddLocalMessage(
      {required this.chatId,
      required this.sender,
      required this.replyToMessageId,
      required this.disableNotification,
      required this.inputMessageContent,
      this.extra});

  /// [chatId] Target chat
  int chatId;

  /// [sender] The sender sender of the message
  MessageSender sender;

  /// [replyToMessageId] Identifier of the message to reply to or 0
  int replyToMessageId;

  /// [disableNotification] Pass true to disable notification for the message
  bool disableNotification;

  /// [inputMessageContent] The content of the message to be added
  InputMessageContent inputMessageContent;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddLocalMessage.fromJson(Map<String, dynamic> json) {
    return AddLocalMessage(
      chatId: json['chat_id'] ?? 0,
      sender: MessageSender.fromJson(json['sender'] ?? <String, dynamic>{}),
      replyToMessageId: json['reply_to_message_id'] ?? 0,
      disableNotification: json['disable_notification'] ?? false,
      inputMessageContent: InputMessageContent.fromJson(
          json['input_message_content'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "sender": this.sender.toJson(),
      "reply_to_message_id": this.replyToMessageId,
      "disable_notification": this.disableNotification,
      "input_message_content": this.inputMessageContent.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addLocalMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
