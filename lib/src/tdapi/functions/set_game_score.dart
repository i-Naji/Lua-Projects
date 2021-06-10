part of '../tdapi.dart';

class SetGameScore extends TdFunction {
  /// Updates the game score of the specified user in the game; for bots only
  SetGameScore(
      {required this.chatId,
      required this.messageId,
      required this.editMessage,
      required this.userId,
      required this.score,
      required this.force,
      this.extra});

  /// [chatId] The chat to which the message with the game belongs
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [editMessage] True, if the message should be edited
  bool editMessage;

  /// [userId] User identifier
  int userId;

  /// [score] The new score
  int score;

  /// [force] Pass true to update the score even if it decreases. If the score is 0, the user will be deleted from the high score table
  bool force;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetGameScore.fromJson(Map<String, dynamic> json) {
    return SetGameScore(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      editMessage: json['edit_message'] ?? false,
      userId: json['user_id'] ?? 0,
      score: json['score'] ?? 0,
      force: json['force'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "edit_message": this.editMessage,
      "user_id": this.userId,
      "score": this.score,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}
