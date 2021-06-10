part of '../tdapi.dart';

class EditMessageSchedulingState extends TdFunction {
  /// Edits the time when a scheduled message will be sent. Scheduling state of all messages in the same album or forwarded together with the message will be also changed
  EditMessageSchedulingState(
      {required this.chatId,
      required this.messageId,
      this.schedulingState,
      this.extra});

  /// [chatId] The chat the message belongs to
  int chatId;

  /// [messageId] Identifier of the message
  int messageId;

  /// [schedulingState] The new message scheduling state. Pass null to send the message immediately
  MessageSchedulingState? schedulingState;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory EditMessageSchedulingState.fromJson(Map<String, dynamic> json) {
    return EditMessageSchedulingState(
      chatId: json['chat_id'] ?? 0,
      messageId: json['message_id'] ?? 0,
      schedulingState: MessageSchedulingState.fromJson(
          json['scheduling_state'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "chat_id": this.chatId,
      "message_id": this.messageId,
      "scheduling_state":
          this.schedulingState == null ? null : this.schedulingState!.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'editMessageSchedulingState';

  @override
  String getConstructor() => CONSTRUCTOR;
}
