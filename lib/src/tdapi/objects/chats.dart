part of '../tdapi.dart';

class Chats extends TdObject {
  /// Represents a list of chats
  Chats({required this.totalCount, required this.chatIds, this.extra});

  /// [totalCount] Approximate total count of chats found
  int totalCount;

  /// [chatIds] List of chat identifiers
  List<int> chatIds;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Chats.fromJson(Map<String, dynamic> json) {
    return Chats(
      totalCount: json['total_count'] ?? 0,
      chatIds: List<int>.from(
          (json['chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "chat_ids": this.chatIds.map((i) => i).toList(),
    };
  }

  static const CONSTRUCTOR = 'chats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
