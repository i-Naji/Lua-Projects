part of '../tdapi.dart';

class SetInlineGameScore extends TdFunction {
  /// Updates the game score of the specified user in a game; for bots only
  SetInlineGameScore(
      {required this.inlineMessageId,
      required this.editMessage,
      required this.userId,
      required this.score,
      required this.force,
      this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

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
  factory SetInlineGameScore.fromJson(Map<String, dynamic> json) {
    return SetInlineGameScore(
      inlineMessageId: json['inline_message_id'] ?? "",
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
      "inline_message_id": this.inlineMessageId,
      "edit_message": this.editMessage,
      "user_id": this.userId,
      "score": this.score,
      "force": this.force,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setInlineGameScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}
