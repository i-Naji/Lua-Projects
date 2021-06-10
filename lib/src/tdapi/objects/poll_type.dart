part of '../tdapi.dart';

class PollType extends TdObject {
  /// Describes the type of a poll
  PollType();

  /// a PollType return type can be :
  /// * PollTypeRegular
  /// * PollTypeQuiz
  factory PollType.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case PollTypeRegular.CONSTRUCTOR:
        return PollTypeRegular.fromJson(json);
      case PollTypeQuiz.CONSTRUCTOR:
        return PollTypeQuiz.fromJson(json);
      default:
        return PollType();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'pollType';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PollTypeRegular extends PollType {
  /// A regular poll
  PollTypeRegular({required this.allowMultipleAnswers});

  /// [allowMultipleAnswers] True, if multiple answer options can be chosen simultaneously
  bool allowMultipleAnswers;

  /// Parse from a json
  factory PollTypeRegular.fromJson(Map<String, dynamic> json) {
    return PollTypeRegular(
      allowMultipleAnswers: json['allow_multiple_answers'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "allow_multiple_answers": this.allowMultipleAnswers,
    };
  }

  static const CONSTRUCTOR = 'pollTypeRegular';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class PollTypeQuiz extends PollType {
  /// A poll in quiz mode, which has exactly one correct answer option and can be answered only once
  PollTypeQuiz({required this.correctOptionId, required this.explanation});

  /// [correctOptionId] 0-based identifier of the correct answer option; -1 for a yet unanswered poll
  int correctOptionId;

  /// [explanation] Text that is shown when the user chooses an incorrect answer or taps on the lamp icon, 0-200 characters with at most 2 line feeds; empty for a yet unanswered poll
  FormattedText explanation;

  /// Parse from a json
  factory PollTypeQuiz.fromJson(Map<String, dynamic> json) {
    return PollTypeQuiz(
      correctOptionId: json['correct_option_id'] ?? 0,
      explanation:
          FormattedText.fromJson(json['explanation'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "correct_option_id": this.correctOptionId,
      "explanation": this.explanation.toJson(),
    };
  }

  static const CONSTRUCTOR = 'pollTypeQuiz';

  @override
  String getConstructor() => CONSTRUCTOR;
}
