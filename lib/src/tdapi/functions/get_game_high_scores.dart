part of '../tdapi.dart';

class GetGameHighScores extends TdFunction {
  /// Returns the high scores for a game and some part of the high score table in the range of the specified user; for bots only
  GetGameHighScores(
      {required this.chatId,
      required this.messageId,
      required this.userId,
      this.extra});

  /// [chatId] The chat that contains the message with the game
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetGameHighScores.fromJson(Map<String, dynamic> json) {
    return GetGameHighScores(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
}
