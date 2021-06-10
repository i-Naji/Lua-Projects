part of '../tdapi.dart';

class Messages extends TdObject {
  /// Contains a list of messages
  Messages({required this.totalCount, this.messages, this.extra});

  /// [totalCount] Approximate total count of messages found
  int totalCount;

  /// [messages] List of messages; messages may be null
  List<Message>? messages;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Messages.fromJson(Map<String, dynamic> json) {
    return Messages(
      totalCount: json['total_count'] ?? 0,
      messages: List<Message>.from((json['messages'] ?? [])
          .map((item) => Message.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "messages": this.messages == null
          ? null
          : this.messages!.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'messages';

  @override
  String getConstructor() => CONSTRUCTOR;
}
