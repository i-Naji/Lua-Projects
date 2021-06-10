part of '../tdapi.dart';

class MessageSendOptions extends TdObject {
  /// Options to be used when a message is sent
  MessageSendOptions(
      {required this.disableNotification,
      required this.fromBackground,
      required this.schedulingState});

  /// [disableNotification] Pass true to disable notification for the message
  bool disableNotification;

  /// [fromBackground] Pass true if the message is sent from the background
  bool fromBackground;

  /// [schedulingState] Message scheduling state. Messages sent to a secret chat, live location messages and self-destructing messages can't be scheduled
  MessageSchedulingState schedulingState;

  /// Parse from a json
  factory MessageSendOptions.fromJson(Map<String, dynamic> json) {
    return MessageSendOptions(
      disableNotification: json['disable_notification'] ?? false,
      fromBackground: json['from_background'] ?? false,
      schedulingState: MessageSchedulingState.fromJson(
          json['scheduling_state'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "disable_notification": this.disableNotification,
      "from_background": this.fromBackground,
      "scheduling_state": this.schedulingState.toJson(),
    };
  }

  static const CONSTRUCTOR = 'messageSendOptions';

  @override
  String getConstructor() => CONSTRUCTOR;
}
