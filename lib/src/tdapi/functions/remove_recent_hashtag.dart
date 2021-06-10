part of '../tdapi.dart';

class RemoveRecentHashtag extends TdFunction {
  /// Removes a hashtag from the list of recently used hashtags
  RemoveRecentHashtag({required this.hashtag, this.extra});

  /// [hashtag] Hashtag to delete
  String hashtag;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory RemoveRecentHashtag.fromJson(Map<String, dynamic> json) {
    return RemoveRecentHashtag(
      hashtag: json['hashtag'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "hashtag": this.hashtag,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'removeRecentHashtag';

  @override
  String getConstructor() => CONSTRUCTOR;
}
