part of '../tdapi.dart';

class PollOption extends TdObject {
  /// Describes one answer option of a poll
  PollOption(
      {required this.text,
      required this.voterCount,
      required this.votePercentage,
      required this.isChosen,
      required this.isBeingChosen});

  /// [text] Option text, 1-100 characters
  String text;

  /// [voterCount] Number of voters for this option, available only for closed or voted polls
  int voterCount;

  /// [votePercentage] The percentage of votes for this option, 0-100
  int votePercentage;

  /// [isChosen] True, if the option was chosen by the user
  bool isChosen;

  /// [isBeingChosen] True, if the option is being chosen by a pending setPollAnswer request
  bool isBeingChosen;

  /// Parse from a json
  factory PollOption.fromJson(Map<String, dynamic> json) {
    return PollOption(
      text: json['text'] ?? "",
      voterCount: json['voter_count'] ?? 0,
      votePercentage: json['vote_percentage'] ?? 0,
      isChosen: json['is_chosen'] ?? false,
      isBeingChosen: json['is_being_chosen'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "text": this.text,
      "voter_count": this.voterCount,
      "vote_percentage": this.votePercentage,
      "is_chosen": this.isChosen,
      "is_being_chosen": this.isBeingChosen,
    };
  }

  static const CONSTRUCTOR = 'pollOption';

  @override
  String getConstructor() => CONSTRUCTOR;
}
