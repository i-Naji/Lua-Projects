part of '../tdapi.dart';

class SendCallRating extends TdFunction {
  /// Sends a call rating
  SendCallRating(
      {required this.callId,
      required this.rating,
      required this.comment,
      required this.problems,
      this.extra});

  /// [callId] Call identifier
  int callId;

  /// [rating] Call rating; 1-5
  int rating;

  /// [comment] An optional user comment if the rating is less than 5
  String comment;

  /// [problems] List of the exact types of problems with the call, specified by the user
  List<CallProblem> problems;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SendCallRating.fromJson(Map<String, dynamic> json) {
    return SendCallRating(
      callId: json['call_id'] ?? 0,
      rating: json['rating'] ?? 0,
      comment: json['comment'] ?? "",
      problems: List<CallProblem>.from((json['problems'] ?? [])
          .map((item) => CallProblem.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "rating": this.rating,
      "comment": this.comment,
      "problems": this.problems.map((i) => i.toJson()).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'sendCallRating';

  @override
  String getConstructor() => CONSTRUCTOR;
}
