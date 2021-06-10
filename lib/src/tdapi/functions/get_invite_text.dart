part of '../tdapi.dart';

class GetInviteText extends TdFunction {
  /// Returns the default text for invitation messages to be used as a placeholder when the current user invites friends to Telegram
  GetInviteText({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetInviteText.fromJson(Map<String, dynamic> json) {
    return GetInviteText(
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getInviteText';

  @override
  String getConstructor() => CONSTRUCTOR;
}
