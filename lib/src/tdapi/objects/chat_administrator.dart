part of '../tdapi.dart';

class ChatAdministrator extends TdObject {
  /// Contains information about a chat administrator
  ChatAdministrator(
      {required this.userId, required this.customTitle, required this.isOwner});

  /// [userId] User identifier of the administrator
  int userId;

  /// [customTitle] Custom title of the administrator
  String customTitle;

  /// [isOwner] True, if the user is the owner of the chat
  bool isOwner;

  /// Parse from a json
  factory ChatAdministrator.fromJson(Map<String, dynamic> json) {
    return ChatAdministrator(
      userId: json['user_id'] ?? 0,
      customTitle: json['custom_title'] ?? "",
      isOwner: json['is_owner'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "custom_title": this.customTitle,
      "is_owner": this.isOwner,
    };
  }

  static const CONSTRUCTOR = 'chatAdministrator';

  @override
  String getConstructor() => CONSTRUCTOR;
}
