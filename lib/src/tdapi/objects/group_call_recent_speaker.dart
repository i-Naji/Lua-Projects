part of '../tdapi.dart';

class GroupCallRecentSpeaker extends TdObject {
  /// Describes a recently speaking user in a group call
  GroupCallRecentSpeaker({required this.userId, required this.isSpeaking});

  /// [userId] User identifier
  int userId;

  /// [isSpeaking] True, is the user has spoken recently
  bool isSpeaking;

  /// Parse from a json
  factory GroupCallRecentSpeaker.fromJson(Map<String, dynamic> json) {
    return GroupCallRecentSpeaker(
      userId: json['user_id'] ?? 0,
      isSpeaking: json['is_speaking'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "is_speaking": this.isSpeaking,
    };
  }

  static const CONSTRUCTOR = 'groupCallRecentSpeaker';

  @override
  String getConstructor() => CONSTRUCTOR;
}
