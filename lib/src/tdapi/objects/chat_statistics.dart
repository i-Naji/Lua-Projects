part of '../tdapi.dart';

class ChatStatistics extends TdObject {
  /// Contains a detailed statistics about a chat
  ChatStatistics();

  /// a ChatStatistics return type can be :
  /// * ChatStatisticsSupergroup
  /// * ChatStatisticsChannel
  factory ChatStatistics.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case ChatStatisticsSupergroup.CONSTRUCTOR:
        return ChatStatisticsSupergroup.fromJson(json);
      case ChatStatisticsChannel.CONSTRUCTOR:
        return ChatStatisticsChannel.fromJson(json);
      default:
        return ChatStatistics();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'chatStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsSupergroup extends ChatStatistics {
  /// A detailed statistics about a supergroup chat
  ChatStatisticsSupergroup(
      {required this.period,
      required this.memberCount,
      required this.messageCount,
      required this.viewerCount,
      required this.senderCount,
      required this.memberCountGraph,
      required this.joinGraph,
      required this.joinBySourceGraph,
      required this.languageGraph,
      required this.messageContentGraph,
      required this.actionGraph,
      required this.dayGraph,
      required this.weekGraph,
      required this.topSenders,
      required this.topAdministrators,
      required this.topInviters,
      this.extra});

  /// [period] A period to which the statistics applies
  DateRange period;

  /// [memberCount] Number of members in the chat
  StatisticalValue memberCount;

  /// [messageCount] Number of messages sent to the chat
  StatisticalValue messageCount;

  /// [viewerCount] Number of users who viewed messages in the chat
  StatisticalValue viewerCount;

  /// [senderCount] Number of users who sent messages to the chat
  StatisticalValue senderCount;

  /// [memberCountGraph] A graph containing number of members in the chat
  StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  StatisticalGraph joinGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per source
  StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing distribution of active users per language
  StatisticalGraph languageGraph;

  /// [messageContentGraph] A graph containing distribution of sent messages by content type
  StatisticalGraph messageContentGraph;

  /// [actionGraph] A graph containing number of different actions in the chat
  StatisticalGraph actionGraph;

  /// [dayGraph] A graph containing distribution of message views per hour
  StatisticalGraph dayGraph;

  /// [weekGraph] A graph containing distribution of message views per day of week
  StatisticalGraph weekGraph;

  /// [topSenders] List of users sent most messages in the last week
  List<ChatStatisticsMessageSenderInfo> topSenders;

  /// [topAdministrators] List of most active administrators in the last week
  List<ChatStatisticsAdministratorActionsInfo> topAdministrators;

  /// [topInviters] List of most active inviters of new members in the last week
  List<ChatStatisticsInviterInfo> topInviters;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatStatisticsSupergroup.fromJson(Map<String, dynamic> json) {
    return ChatStatisticsSupergroup(
      period: DateRange.fromJson(json['period'] ?? <String, dynamic>{}),
      memberCount: StatisticalValue.fromJson(
          json['member_count'] ?? <String, dynamic>{}),
      messageCount: StatisticalValue.fromJson(
          json['message_count'] ?? <String, dynamic>{}),
      viewerCount: StatisticalValue.fromJson(
          json['viewer_count'] ?? <String, dynamic>{}),
      senderCount: StatisticalValue.fromJson(
          json['sender_count'] ?? <String, dynamic>{}),
      memberCountGraph: StatisticalGraph.fromJson(
          json['member_count_graph'] ?? <String, dynamic>{}),
      joinGraph:
          StatisticalGraph.fromJson(json['join_graph'] ?? <String, dynamic>{}),
      joinBySourceGraph: StatisticalGraph.fromJson(
          json['join_by_source_graph'] ?? <String, dynamic>{}),
      languageGraph: StatisticalGraph.fromJson(
          json['language_graph'] ?? <String, dynamic>{}),
      messageContentGraph: StatisticalGraph.fromJson(
          json['message_content_graph'] ?? <String, dynamic>{}),
      actionGraph: StatisticalGraph.fromJson(
          json['action_graph'] ?? <String, dynamic>{}),
      dayGraph:
          StatisticalGraph.fromJson(json['day_graph'] ?? <String, dynamic>{}),
      weekGraph:
          StatisticalGraph.fromJson(json['week_graph'] ?? <String, dynamic>{}),
      topSenders: List<ChatStatisticsMessageSenderInfo>.from(
          (json['top_senders'] ?? [])
              .map((item) => ChatStatisticsMessageSenderInfo.fromJson(
                  item ?? <String, dynamic>{}))
              .toList()),
      topAdministrators: List<ChatStatisticsAdministratorActionsInfo>.from(
          (json['top_administrators'] ?? [])
              .map((item) => ChatStatisticsAdministratorActionsInfo.fromJson(
                  item ?? <String, dynamic>{}))
              .toList()),
      topInviters: List<ChatStatisticsInviterInfo>.from((json['top_inviters'] ??
              [])
          .map((item) =>
              ChatStatisticsInviterInfo.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "period": this.period.toJson(),
      "member_count": this.memberCount.toJson(),
      "message_count": this.messageCount.toJson(),
      "viewer_count": this.viewerCount.toJson(),
      "sender_count": this.senderCount.toJson(),
      "member_count_graph": this.memberCountGraph.toJson(),
      "join_graph": this.joinGraph.toJson(),
      "join_by_source_graph": this.joinBySourceGraph.toJson(),
      "language_graph": this.languageGraph.toJson(),
      "message_content_graph": this.messageContentGraph.toJson(),
      "action_graph": this.actionGraph.toJson(),
      "day_graph": this.dayGraph.toJson(),
      "week_graph": this.weekGraph.toJson(),
      "top_senders": this.topSenders.map((i) => i.toJson()).toList(),
      "top_administrators":
          this.topAdministrators.map((i) => i.toJson()).toList(),
      "top_inviters": this.topInviters.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsSupergroup';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class ChatStatisticsChannel extends ChatStatistics {
  /// A detailed statistics about a channel chat
  ChatStatisticsChannel(
      {required this.period,
      required this.memberCount,
      required this.meanViewCount,
      required this.meanShareCount,
      required this.enabledNotificationsPercentage,
      required this.memberCountGraph,
      required this.joinGraph,
      required this.muteGraph,
      required this.viewCountByHourGraph,
      required this.viewCountBySourceGraph,
      required this.joinBySourceGraph,
      required this.languageGraph,
      required this.messageInteractionGraph,
      required this.instantViewInteractionGraph,
      required this.recentMessageInteractions,
      this.extra});

  /// [period] A period to which the statistics applies
  DateRange period;

  /// [memberCount] Number of members in the chat
  StatisticalValue memberCount;

  /// [meanViewCount] Mean number of times the recently sent messages was viewed
  StatisticalValue meanViewCount;

  /// [meanShareCount] Mean number of times the recently sent messages was shared
  StatisticalValue meanShareCount;

  /// [enabledNotificationsPercentage] A percentage of users with enabled notifications for the chat
  double enabledNotificationsPercentage;

  /// [memberCountGraph] A graph containing number of members in the chat
  StatisticalGraph memberCountGraph;

  /// [joinGraph] A graph containing number of members joined and left the chat
  StatisticalGraph joinGraph;

  /// [muteGraph] A graph containing number of members muted and unmuted the chat
  StatisticalGraph muteGraph;

  /// [viewCountByHourGraph] A graph containing number of message views in a given hour in the last two weeks
  StatisticalGraph viewCountByHourGraph;

  /// [viewCountBySourceGraph] A graph containing number of message views per source
  StatisticalGraph viewCountBySourceGraph;

  /// [joinBySourceGraph] A graph containing number of new member joins per source
  StatisticalGraph joinBySourceGraph;

  /// [languageGraph] A graph containing number of users viewed chat messages per language
  StatisticalGraph languageGraph;

  /// [messageInteractionGraph] A graph containing number of chat message views and shares
  StatisticalGraph messageInteractionGraph;

  /// [instantViewInteractionGraph] A graph containing number of views of associated with the chat instant views
  StatisticalGraph instantViewInteractionGraph;

  /// [recentMessageInteractions] Detailed statistics about number of views and shares of recently sent messages
  List<ChatStatisticsMessageInteractionInfo> recentMessageInteractions;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatStatisticsChannel.fromJson(Map<String, dynamic> json) {
    return ChatStatisticsChannel(
      period: DateRange.fromJson(json['period'] ?? <String, dynamic>{}),
      memberCount: StatisticalValue.fromJson(
          json['member_count'] ?? <String, dynamic>{}),
      meanViewCount: StatisticalValue.fromJson(
          json['mean_view_count'] ?? <String, dynamic>{}),
      meanShareCount: StatisticalValue.fromJson(
          json['mean_share_count'] ?? <String, dynamic>{}),
      enabledNotificationsPercentage:
          json['enabled_notifications_percentage'] ?? 0,
      memberCountGraph: StatisticalGraph.fromJson(
          json['member_count_graph'] ?? <String, dynamic>{}),
      joinGraph:
          StatisticalGraph.fromJson(json['join_graph'] ?? <String, dynamic>{}),
      muteGraph:
          StatisticalGraph.fromJson(json['mute_graph'] ?? <String, dynamic>{}),
      viewCountByHourGraph: StatisticalGraph.fromJson(
          json['view_count_by_hour_graph'] ?? <String, dynamic>{}),
      viewCountBySourceGraph: StatisticalGraph.fromJson(
          json['view_count_by_source_graph'] ?? <String, dynamic>{}),
      joinBySourceGraph: StatisticalGraph.fromJson(
          json['join_by_source_graph'] ?? <String, dynamic>{}),
      languageGraph: StatisticalGraph.fromJson(
          json['language_graph'] ?? <String, dynamic>{}),
      messageInteractionGraph: StatisticalGraph.fromJson(
          json['message_interaction_graph'] ?? <String, dynamic>{}),
      instantViewInteractionGraph: StatisticalGraph.fromJson(
          json['instant_view_interaction_graph'] ?? <String, dynamic>{}),
      recentMessageInteractions:
          List<ChatStatisticsMessageInteractionInfo>.from(
              (json['recent_message_interactions'] ?? [])
                  .map((item) => ChatStatisticsMessageInteractionInfo.fromJson(
                      item ?? <String, dynamic>{}))
                  .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "period": this.period.toJson(),
      "member_count": this.memberCount.toJson(),
      "mean_view_count": this.meanViewCount.toJson(),
      "mean_share_count": this.meanShareCount.toJson(),
      "enabled_notifications_percentage": this.enabledNotificationsPercentage,
      "member_count_graph": this.memberCountGraph.toJson(),
      "join_graph": this.joinGraph.toJson(),
      "mute_graph": this.muteGraph.toJson(),
      "view_count_by_hour_graph": this.viewCountByHourGraph.toJson(),
      "view_count_by_source_graph": this.viewCountBySourceGraph.toJson(),
      "join_by_source_graph": this.joinBySourceGraph.toJson(),
      "language_graph": this.languageGraph.toJson(),
      "message_interaction_graph": this.messageInteractionGraph.toJson(),
      "instant_view_interaction_graph":
          this.instantViewInteractionGraph.toJson(),
      "recent_message_interactions":
          this.recentMessageInteractions.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsChannel';

  @override
  String getConstructor() => CONSTRUCTOR;
}
