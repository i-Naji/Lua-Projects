part of '../tdapi.dart';

class GetInactiveSupergroupChats extends TdFunction {
  /// Returns a list of recently inactive supergroups and channels. Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH error
  GetInactiveSupergroupChats({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetInactiveSupergroupChats.fromJson(Map<String, dynamic> json) {
    return GetInactiveSupergroupChats(
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

  static const CONSTRUCTOR = 'getInactiveSupergroupChats';

  @override
  String getConstructor() => CONSTRUCTOR;
}
