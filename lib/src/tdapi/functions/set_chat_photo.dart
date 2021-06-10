part of '../tdapi.dart';

class SetChatPhoto extends TdFunction {
  /// Changes the photo of a chat. Supported only for basic groups, supergroups and channels. Requires can_change_info rights
  SetChatPhoto({required this.chatId, this.photo, this.extra});

  /// [chatId] Chat identifier
  int chatId;

  /// [photo] New chat photo. Pass null to delete the chat photo
  InputChatPhoto? photo;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory SetChatPhoto.fromJson(Map<String, dynamic> json) {
    return SetChatPhoto(
      chatId: json['chat_id'] ?? 0,
      photo: InputChatPhoto.fromJson(json['photo'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'setChatPhoto';

  @override
  String getConstructor() => CONSTRUCTOR;
}
