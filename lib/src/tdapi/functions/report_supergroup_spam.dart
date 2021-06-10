part of '../tdapi.dart';

class ReportSupergroupSpam extends TdFunction {
  /// Reports some messages from a user in a supergroup as spam; requires administrator rights in the supergroup
  ReportSupergroupSpam(
      {required this.supergroupId,
      required this.userId,
      required this.messageIds,
      this.extra});

  /// [supergroupId] Supergroup identifier
  int supergroupId;

  /// [userId] User identifier
  int userId;

  /// [messageIds] Identifiers of messages sent in the supergroup by the user. This list must be non-empty
  List<int> messageIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ReportSupergroupSpam.fromJson(Map<String, dynamic> json) {
    return ReportSupergroupSpam(
      supergroupId: json['supergroup_id'] ?? 0,
      userId: json['user_id'] ?? 0,
      messageIds: List<int>.from(
          (json['message_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "supergroup_id": this.supergroupId,
      "user_id": this.userId,
      "message_ids": this.messageIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'reportSupergroupSpam';

  @override
  String getConstructor() => CONSTRUCTOR;
}
