part of '../tdapi.dart';

class MessageStatistics extends TdObject {
  /// A detailed statistics about a message
  MessageStatistics({required this.messageInteractionGraph, this.extra});

  /// [messageInteractionGraph] A graph containing number of message views and shares
  StatisticalGraph messageInteractionGraph;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory MessageStatistics.fromJson(Map<String, dynamic> json) {
    return MessageStatistics(
      messageInteractionGraph: StatisticalGraph.fromJson(
          json['message_interaction_graph'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "message_interaction_graph": this.messageInteractionGraph.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
