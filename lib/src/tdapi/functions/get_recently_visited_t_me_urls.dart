part of '../tdapi.dart';

class GetRecentlyVisitedTMeUrls extends TdFunction {
  /// Returns t.me URLs recently visited by a newly registered user
  GetRecentlyVisitedTMeUrls({required this.referrer, this.extra});

  /// [referrer] Google Play referrer to identify the user
  String referrer;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRecentlyVisitedTMeUrls.fromJson(Map<String, dynamic> json) {
    return GetRecentlyVisitedTMeUrls(
      referrer: json['referrer'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "referrer": this.referrer,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRecentlyVisitedTMeUrls';

  @override
  String getConstructor() => CONSTRUCTOR;
}
