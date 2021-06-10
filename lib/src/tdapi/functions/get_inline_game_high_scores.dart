part of '../tdapi.dart';

class GetInlineGameHighScores extends TdFunction {
  /// Returns game high scores and some part of the high score table in the range of the specified user; for bots only
  GetInlineGameHighScores(
      {required this.inlineMessageId, required this.userId, this.extra});

  /// [inlineMessageId] Inline message identifier
  String inlineMessageId;

  /// [userId] User identifier
  int userId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetInlineGameHighScores.fromJson(Map<String, dynamic> json) {
    return GetInlineGameHighScores(
      inlineMessageId: json['inline_message_id'] ?? "",
      userId: json['user_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "inline_message_id": this.inlineMessageId,
      "user_id": this.userId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInlineGameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
}
