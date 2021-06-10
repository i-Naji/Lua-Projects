part of '../tdapi.dart';

class GameHighScores extends TdObject {
  /// Contains a list of game high scores
  GameHighScores({required this.scores, this.extra});

  /// [scores] A list of game high scores
  List<GameHighScore> scores;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory GameHighScores.fromJson(Map<String, dynamic> json) {
    return GameHighScores(
      scores: List<GameHighScore>.from((json['scores'] ?? [])
          .map((item) => GameHighScore.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "scores": this.scores.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'gameHighScores';

  @override
  String getConstructor() => CONSTRUCTOR;
}
