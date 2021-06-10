part of '../tdapi.dart';

class DeleteChatFilter extends TdFunction {
  /// Deletes existing chat filter
  DeleteChatFilter({required this.chatFilterId, this.extra});

  /// [chatFilterId] Chat filter identifier
  int chatFilterId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DeleteChatFilter.fromJson(Map<String, dynamic> json) {
    return DeleteChatFilter(
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

  static const CONSTRUCTOR = 'deleteChatFilter';

  @override
  String getConstructor() => CONSTRUCTOR;
}
