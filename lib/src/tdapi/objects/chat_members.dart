part of '../tdapi.dart';

class ChatMembers extends TdObject {
  /// Contains a list of chat members
  ChatMembers({required this.totalCount, required this.members, this.extra});

  /// [totalCount] Approximate total count of chat members found
  int totalCount;

  /// [members] A list of chat members
  List<ChatMember> members;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatMembers.fromJson(Map<String, dynamic> json) {
    return ChatMembers(
      totalCount: json['total_count'] ?? 0,
      members: List<ChatMember>.from((json['members'] ?? [])
          .map((item) => ChatMember.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "total_count": this.totalCount,
      "members": this.members.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'chatMembers';

  @override
  String getConstructor() => CONSTRUCTOR;
}
