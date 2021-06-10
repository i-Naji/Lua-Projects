part of '../tdapi.dart';

class MessageLink extends TdObject {
  /// Contains an HTTPS link to a message in a supergroup or channel
  MessageLink({required this.link, required this.isPublic, this.extra});

  /// [link] Message link
  String link;

  /// [isPublic] True, if the link will work for non-members of the chat
  bool isPublic;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory MessageLink.fromJson(Map<String, dynamic> json) {
    return MessageLink(
      link: json['link'] ?? "",
      isPublic: json['is_public'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "link": this.link,
      "is_public": this.isPublic,
    };
  }

  static const CONSTRUCTOR = 'messageLink';

  @override
  String getConstructor() => CONSTRUCTOR;
}
