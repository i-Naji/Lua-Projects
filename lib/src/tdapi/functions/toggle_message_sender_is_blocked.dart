part of '../tdapi.dart';

class ToggleMessageSenderIsBlocked extends TdFunction {
  /// Changes the block state of a message sender. Currently, only users and supergroup chats can be blocked
  ToggleMessageSenderIsBlocked(
      {required this.sender, required this.isBlocked, this.extra});

  /// [sender] Message Sender
  MessageSender sender;

  /// [isBlocked] New value of is_blocked
  bool isBlocked;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory ToggleMessageSenderIsBlocked.fromJson(Map<String, dynamic> json) {
    return ToggleMessageSenderIsBlocked(
      sender: MessageSender.fromJson(json['sender'] ?? <String, dynamic>{}),
      isBlocked: json['is_blocked'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "sender": this.sender.toJson(),
      "is_blocked": this.isBlocked,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'toggleMessageSenderIsBlocked';

  @override
  String getConstructor() => CONSTRUCTOR;
}
