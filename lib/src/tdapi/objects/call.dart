part of '../tdapi.dart';

class Call extends TdObject {
  /// Describes a call
  Call(
      {required this.id,
      required this.userId,
      required this.isOutgoing,
      required this.isVideo,
      required this.state});

  /// [id] Call identifier, not persistent
  int id;

  /// [userId] Peer user identifier
  int userId;

  /// [isOutgoing] True, if the call is outgoing
  bool isOutgoing;

  /// [isVideo] True, if the call is a video call
  bool isVideo;

  /// [state] Call state
  CallState state;

  /// Parse from a json
  factory Call.fromJson(Map<String, dynamic> json) {
    return Call(
      id: json['id'] ?? 0,
      userId: json['user_id'] ?? 0,
      isOutgoing: json['is_outgoing'] ?? false,
      isVideo: json['is_video'] ?? false,
      state: CallState.fromJson(json['state'] ?? <String, dynamic>{}),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "user_id": this.userId,
      "is_outgoing": this.isOutgoing,
      "is_video": this.isVideo,
      "state": this.state.toJson(),
    };
  }

  static const CONSTRUCTOR = 'call';

  @override
  String getConstructor() => CONSTRUCTOR;
}
