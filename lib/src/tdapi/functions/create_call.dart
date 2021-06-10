part of '../tdapi.dart';

class CreateCall extends TdFunction {
  /// Creates a new call
  CreateCall(
      {required this.userId,
      required this.protocol,
      required this.isVideo,
      this.extra});

  /// [userId] Identifier of the user to be called
  int userId;

  /// [protocol] Description of the call protocols supported by the application
  CallProtocol protocol;

  /// [isVideo] True, if a video call needs to be created
  bool isVideo;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CreateCall.fromJson(Map<String, dynamic> json) {
    return CreateCall(
      userId: json['user_id'] ?? 0,
      protocol: CallProtocol.fromJson(json['protocol'] ?? <String, dynamic>{}),
      isVideo: json['is_video'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "protocol": this.protocol.toJson(),
      "is_video": this.isVideo,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'createCall';

  @override
  String getConstructor() => CONSTRUCTOR;
}
