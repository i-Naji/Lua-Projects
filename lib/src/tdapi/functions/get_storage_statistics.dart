part of '../tdapi.dart';

class GetStorageStatistics extends TdFunction {
  /// Returns storage usage statistics. Can be called before authorization
  GetStorageStatistics({required this.chatLimit, this.extra});

  /// [chatLimit] The maximum number of chats with the largest storage usage for which separate statistics should be returned. All other chats will be grouped in entries with chat_id == 0. If the chat info database is not used, the chat_limit is ignored and is always set to 0
  int chatLimit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetStorageStatistics.fromJson(Map<String, dynamic> json) {
    return GetStorageStatistics(
      chatLimit: json['chat_limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_limit": this.chatLimit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getStorageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
