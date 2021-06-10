part of '../tdapi.dart';

class DraftMessage extends TdObject {
  /// Contains information about a message draft
  DraftMessage(
      {required this.replyToMessageId,
      required this.date,
      required this.inputMessageText});

  /// [replyToMessageId] Identifier of the message to reply to; 0 if none
  int replyToMessageId;

  /// [date] Point in time (Unix timestamp) when the draft was created
  int date;

  /// [inputMessageText] Content of the message draft; this should always be of type inputMessageText
  InputMessageContent inputMessageText;

  /// Parse from a json
  factory DraftMessage.fromJson(Map<String, dynamic> json) {
    return DraftMessage(
      replyToMessageId: json['reply_to_message_id'] ?? 0,
      date: json['date'] ?? 0,
      inputMessageText: InputMessageContent.fromJson(
          json['input_message_text'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "reply_to_message_id": this.replyToMessageId,
      "date": this.date,
      "input_message_text": this.inputMessageText.toJson(),
    };
  }

  static const CONSTRUCTOR = 'draftMessage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
