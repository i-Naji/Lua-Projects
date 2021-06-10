part of '../tdapi.dart';

class GetChatFilter extends TdFunction {
  /// Returns information about a chat filter by its identifier
  GetChatFilter({required this.chatFilterId, this.extra});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetChatFilter.fromJson(Map<String, dynamic> json) {
    return GetChatFilter(
      chatFilterId: json['chat_filter_id'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_filter_id": this.chatFilterId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
