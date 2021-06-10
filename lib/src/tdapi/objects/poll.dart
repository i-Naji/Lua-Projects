part of '../tdapi.dart';

class Poll extends TdObject {
  /// Describes a poll
  Poll(
      {required this.id,
      required this.question,
      required this.options,
      required this.totalVoterCount,
      required this.recentVoterUserIds,
      required this.isAnonymous,
      required this.type,
      required this.openPeriod,
      required this.closeDate,
      required this.isClosed});

  /// [id] Unique poll identifier
  int id;

  /// [question] Poll question, 1-300 characters
  String question;

  /// [options] List of poll answer options
  List<PollOption> options;

  /// [totalVoterCount] Total number of voters, participating in the poll
  int totalVoterCount;

  /// [recentVoterUserIds] User identifiers of recent voters, if the poll is non-anonymous
  List<int> recentVoterUserIds;

  /// [isAnonymous] True, if the poll is anonymous
  bool isAnonymous;

  /// [type] Type of the poll
  PollType type;

  /// [openPeriod] Amount of time the poll will be active after creation, in seconds
  int openPeriod;

  /// [closeDate] Point in time (Unix timestamp) when the poll will be automatically closed
  int closeDate;

  /// [isClosed] True, if the poll is closed
  bool isClosed;

  /// Parse from a json
  factory Poll.fromJson(Map<String, dynamic> json) {
    return Poll(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      question: json['question'] ?? "",
      options: List<PollOption>.from((json['options'] ?? [])
          .map((item) => PollOption.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      totalVoterCount: json['total_voter_count'] ?? 0,
      recentVoterUserIds: List<int>.from((json['recent_voter_user_ids'] ?? [])
          .map((item) => item ?? 0)
          .toList()),
      isAnonymous: json['is_anonymous'] ?? false,
      type: PollType.fromJson(json['type'] ?? <String, dynamic>{}),
      openPeriod: json['open_period'] ?? 0,
      closeDate: json['close_date'] ?? 0,
      isClosed: json['is_closed'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "question": this.question,
      "options": this.options.map((i) => i.toJson()).toList(),
      "total_voter_count": this.totalVoterCount,
      "recent_voter_user_ids": this.recentVoterUserIds.map((i) => i).toList(),
      "is_anonymous": this.isAnonymous,
      "type": this.type.toJson(),
      "open_period": this.openPeriod,
      "close_date": this.closeDate,
      "is_closed": this.isClosed,
    };
  }

  static const CONSTRUCTOR = 'poll';

  @override
  String getConstructor() => CONSTRUCTOR;
}
