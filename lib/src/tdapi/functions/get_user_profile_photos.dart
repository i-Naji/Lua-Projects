part of '../tdapi.dart';

class GetUserProfilePhotos extends TdFunction {
  /// Returns the profile photos of a user. The result of this query may be outdated: some photos might have been deleted already
  GetUserProfilePhotos(
      {required this.userId,
      required this.offset,
      required this.limit,
      this.extra});

  /// [userId] User identifier
  int userId;

  /// [offset] The number of photos to skip; must be non-negative
  int offset;

  /// [limit] The maximum number of photos to be returned; up to 100
  int limit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetUserProfilePhotos.fromJson(Map<String, dynamic> json) {
    return GetUserProfilePhotos(
      userId: json['user_id'] ?? 0,
      offset: json['offset'] ?? 0,
      limit: json['limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "user_id": this.userId,
      "offset": this.offset,
      "limit": this.limit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getUserProfilePhotos';

  @override
  String getConstructor() => CONSTRUCTOR;
}
