part of '../tdapi.dart';

class FoundMessages extends TdObject {
  /// Contains a list of messages found by a search
  FoundMessages(
      {required this.totalCount,
      required this.messages,
      required this.nextOffset,
      this.extra});

  /// [totalCount] Approximate total count of messages found; -1 if unknown
  int totalCount;

  /// [messages] List of messages
  List<Message> messages;

  /// [nextOffset] The offset for the next request. If empty, there are no more results
  String nextOffset;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory FoundMessages.fromJson(Map<String, dynamic> json) {
    return FoundMessages(
      totalCount: json['total_count'] ?? 0,
      messages: List<Message>.from((json['messages'] ?? [])
          .map((item) => Message.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      nextOffset: json['next_offset'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "messages": this.messages.map((i) => i.toJson()).toList(),
      "next_offset": this.nextOffset,
    };
  }

  static const CONSTRUCTOR = 'foundMessages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
