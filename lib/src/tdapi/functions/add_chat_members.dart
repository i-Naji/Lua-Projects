part of '../tdapi.dart';

class AddChatMembers extends TdFunction {
  /// Adds multiple new members to a chat. Currently this method is only available for supergroups and channels. This method can't be used to join a chat. Members can't be added to a channel if it has more than 200 members. Members will not be added until the chat state has been synchronized with the server
  AddChatMembers({required this.chatId, required this.userIds, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [userIds] Identifiers of the users to be added to the chat. The maximum number of added users is 20 for supergroups and 100 for channels
  List<int> userIds;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory AddChatMembers.fromJson(Map<String, dynamic> json) {
    return AddChatMembers(
      chatId: json['chat_id'] ?? 0,
      userIds: List<int>.from(
          (json['user_ids'] ?? []).map((item) => item ?? 0).toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "user_ids": this.userIds.map((i) => i).toList(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'addChatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
