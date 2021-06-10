part of '../tdapi.dart';

class MessageSenders extends TdObject {
  /// Represents a list of message senders
  MessageSenders({required this.totalCount, required this.senders, this.extra});

  /// [totalCount] Approximate total count of messages senders found
  int totalCount;

  /// [senders] List of message senders
  List<MessageSender> senders;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory MessageSenders.fromJson(Map<String, dynamic> json) {
    return MessageSenders(
      totalCount: json['total_count'] ?? 0,
      senders: List<MessageSender>.from((json['senders'] ?? [])
          .map((item) => MessageSender.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "senders": this.senders.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messageSenders';

  @override
  String getConstructor() => CONSTRUCTOR;
}
