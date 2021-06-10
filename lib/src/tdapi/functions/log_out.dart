part of '../tdapi.dart';

class LogOut extends TdFunction {
  /// Closes the TDLib instance after a proper logout. Requires an available network connection. All local data will be destroyed. After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent
  LogOut({this.extra});

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory LogOut.fromJson(Map<String, dynamic> json) {
    return LogOut(
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

  static const CONSTRUCTOR = 'logOut';

  @override
  String getConstructor() => CONSTRUCTOR;
}
