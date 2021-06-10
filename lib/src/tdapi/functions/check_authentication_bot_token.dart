part of '../tdapi.dart';

class CheckAuthenticationBotToken extends TdFunction {
  /// Checks the authentication token of a bot; to log in as a bot. Works only when the current authorization state is authorizationStateWaitPhoneNumber. Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in
  CheckAuthenticationBotToken({required this.token, this.extra});

  /// [token] The bot token
  String token;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CheckAuthenticationBotToken.fromJson(Map<String, dynamic> json) {
    return CheckAuthenticationBotToken(
      token: json['token'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "token": this.token,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'checkAuthenticationBotToken';

  @override
  String getConstructor() => CONSTRUCTOR;
}
