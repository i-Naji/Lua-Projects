part of '../tdapi.dart';

class LoginUrlInfo extends TdObject {
  /// Contains information about an inline button of type inlineKeyboardButtonTypeLoginUrl
  LoginUrlInfo();

  /// a LoginUrlInfo return type can be :
  /// * LoginUrlInfoOpen
  /// * LoginUrlInfoRequestConfirmation
  factory LoginUrlInfo.fromJson(Map<String, dynamic> json) {
    switch (json["@type"]) {
      case LoginUrlInfoOpen.CONSTRUCTOR:
        return LoginUrlInfoOpen.fromJson(json);
      case LoginUrlInfoRequestConfirmation.CONSTRUCTOR:
        return LoginUrlInfoRequestConfirmation.fromJson(json);
      default:
        return LoginUrlInfo();
    }
  }

  @override
  Map<String, dynamic> toJson() {
    return {};
  }

  static const CONSTRUCTOR = 'loginUrlInfo';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LoginUrlInfoOpen extends LoginUrlInfo {
  /// An HTTP url needs to be open
  LoginUrlInfoOpen({required this.url, required this.skipConfirm, this.extra});

  /// [url] The URL to open
  String url;

  /// [skipConfirm] True, if there is no need to show an ordinary open URL confirm
  bool skipConfirm;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LoginUrlInfoOpen.fromJson(Map<String, dynamic> json) {
    return LoginUrlInfoOpen(
      url: json['url'] ?? "",
      skipConfirm: json['skip_confirm'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "skip_confirm": this.skipConfirm,
    };
  }

  static const CONSTRUCTOR = 'loginUrlInfoOpen';

  @override
  String getConstructor() => CONSTRUCTOR;
}

class LoginUrlInfoRequestConfirmation extends LoginUrlInfo {
  /// An authorization confirmation dialog needs to be shown to the user
  LoginUrlInfoRequestConfirmation(
      {required this.url,
      required this.domain,
      required this.botUserId,
      required this.requestWriteAccess,
      this.extra});

  /// [url] An HTTP URL to be opened
  String url;

  /// [domain] A domain of the URL
  String domain;

  /// [botUserId] User identifier of a bot linked with the website
  int botUserId;

  /// [requestWriteAccess] True, if the user needs to be requested to give the permission to the bot to send them messages
  bool requestWriteAccess;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory LoginUrlInfoRequestConfirmation.fromJson(Map<String, dynamic> json) {
    return LoginUrlInfoRequestConfirmation(
      url: json['url'] ?? "",
      domain: json['domain'] ?? "",
      botUserId: json['bot_user_id'] ?? 0,
      requestWriteAccess: json['request_write_access'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "domain": this.domain,
      "bot_user_id": this.botUserId,
      "request_write_access": this.requestWriteAccess,
    };
  }

  static const CONSTRUCTOR = 'loginUrlInfoRequestConfirmation';

  @override
  String getConstructor() => CONSTRUCTOR;
}
