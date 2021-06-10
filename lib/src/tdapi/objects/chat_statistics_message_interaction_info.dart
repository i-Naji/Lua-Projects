part of '../tdapi.dart';

class ChatStatisticsMessageInteractionInfo extends TdObject {
  /// Contains statistics about interactions with a message
  ChatStatisticsMessageInteractionInfo(
      {required this.messageId,
      required this.viewCount,
      required this.forwardCount});

  /// [messageId] Message identifier
  int messageId;

  /// [viewCount] Number of times the message was viewed
  int viewCount;

  /// [forwardCount] Number of times the message was forwarded
  int forwardCount;

  /// Parse from a json
  factory ChatStatisticsMessageInteractionInfo.fromJson(
      Map<String, dynamic> json) {
    return ChatStatisticsMessageInteractionInfo(
      messageId: json['message_id'] ?? 0,
      viewCount: json['view_count'] ?? 0,
      forwardCount: json['forward_count'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_id": this.messageId,
      "view_count": this.viewCount,
      "forward_count": this.forwardCount,
    };
  }

  static const CONSTRUCTOR = 'chatStatisticsMessageInteractionInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}
