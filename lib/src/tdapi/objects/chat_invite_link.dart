part of '../tdapi.dart';

class ChatInviteLink extends TdObject {
  /// Contains a chat invite link
  ChatInviteLink({required this.inviteLink, this.extra});

  /// [inviteLink] Chat invite link
  String inviteLink;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory ChatInviteLink.fromJson(Map<String, dynamic> json) {
    return ChatInviteLink(
      inviteLink: json['invite_link'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "invite_link": this.inviteLink,
    };
  }

  static const CONSTRUCTOR = 'chatInviteLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
