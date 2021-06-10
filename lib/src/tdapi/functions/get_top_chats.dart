part of '../tdapi.dart';

class GetTopChats extends TdFunction {
  /// Returns a list of frequently used chats. Supported only if the chat info database is enabled
  GetTopChats({required this.category, required this.limit, this.extra});

  /// [category] Category of chats to be returned
  TopChatCategory category;

  /// [limit] The maximum number of chats to be returned; up to 30
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetTopChats.fromJson(Map<String, dynamic> json) {
    return GetTopChats(
      category:
          TopChatCategory.fromJson(json['category'] ?? <String, dynamic>{}),
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "category": this.category.toJson(),
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getTopChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
