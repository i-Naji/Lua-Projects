part of '../tdapi.dart';

class StopPoll extends TdFunction {
  /// Stops a poll. A poll in a message can be stopped when the message has can_be_edited flag set
  StopPoll(
      {required this.chatId,
      required this.messageId,
      required this.replyMarkup,
      this.extra});

  /// [chatId] Identifier of the chat to which the poll belongs
  int chatId;

  /// [messageId] Identifier of the message containing the poll
  int messageId;

  /// [replyMarkup] The new message reply markup; for bots only
  ReplyMarkup replyMarkup;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory StopPoll.fromJson(Map<String, dynamic> json) {
    return StopPoll(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      replyMarkup:
          ReplyMarkup.fromJson(json['reply_markup'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "reply_markup": this.replyMarkup.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'stopPoll';

  @override
  String getConstructor() => CONSTRUCTOR;
}
