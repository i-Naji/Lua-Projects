part of '../tdapi.dart';

class GameHighScore extends TdObject {
  /// Contains one row of the game high score table
  GameHighScore(
      {required this.position, required this.userId, required this.score});

  /// [position] Position in the high score table
  int position;

  /// [userId] User identifier
  int userId;

  /// [score] User score
  int score;

  /// Parse from a json
  factory GameHighScore.fromJson(Map<String, dynamic> json) {
    return GameHighScore(
      position: json['position'] ?? 0,
      userId: json['user_id'] ?? 0,
      score: json['score'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "position": this.position,
      "user_id": this.userId,
      "score": this.score,
    };
  }

  static const CONSTRUCTOR = 'gameHighScore';

  @override
  String getConstructor() => CONSTRUCTOR;
}
