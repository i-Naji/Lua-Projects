part of '../tdapi.dart';

class DiscardCall extends TdFunction {
  /// Discards a call
  DiscardCall(
      {required this.callId,
      required this.isDisconnected,
      required this.duration,
      required this.isVideo,
      required this.connectionId,
      this.extra});

  /// [callId] Call identifier
  int callId;

  /// [isDisconnected] True, if the user was disconnected
  bool isDisconnected;

  /// [duration] The call duration, in seconds
  int duration;

  /// [isVideo] True, if the call was a video call
  bool isVideo;

  /// [connectionId] Identifier of the connection used during the call
  int connectionId;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DiscardCall.fromJson(Map<String, dynamic> json) {
    return DiscardCall(
      callId: json['call_id'] ?? 0,
      isDisconnected: json['is_disconnected'] ?? false,
      duration: json['duration'] ?? 0,
      isVideo: json['is_video'] ?? false,
      connectionId: int.tryParse(json['connection_id'] ?? "") ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "call_id": this.callId,
      "is_disconnected": this.isDisconnected,
      "duration": this.duration,
      "is_video": this.isVideo,
      "connection_id": this.connectionId,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'discardCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
