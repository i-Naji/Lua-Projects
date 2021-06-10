part of '../tdapi.dart';

class ConnectedWebsite extends TdObject {
  /// Contains information about one website the current user is logged in with Telegram
  ConnectedWebsite(
      {required this.id,
      required this.domainName,
      required this.botUserId,
      required this.browser,
      required this.platform,
      required this.logInDate,
      required this.lastActiveDate,
      required this.ip,
      required this.location});

  /// [id] Website identifier
  int id;

  /// [domainName] The domain name of the website
  String domainName;

  /// [botUserId] User identifier of a bot linked with the website
  int botUserId;

  /// [browser] The version of a browser used to log in
  String browser;

  /// [platform] Operating system the browser is running on
  String platform;

  /// [logInDate] Point in time (Unix timestamp) when the user was logged in
  int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when obtained authorization was last used
  int lastActiveDate;

  /// [ip] IP address from which the user was logged in, in human-readable format
  String ip;

  /// [location] Human-readable description of a country and a region, from which the user was logged in, based on the IP address
  String location;

  /// Parse from a json
  factory ConnectedWebsite.fromJson(Map<String, dynamic> json) {
    return ConnectedWebsite(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      domainName: json['domain_name'] ?? "",
      botUserId: json['bot_user_id'] ?? 0,
      browser: json['browser'] ?? "",
      platform: json['platform'] ?? "",
      logInDate: json['log_in_date'] ?? 0,
      lastActiveDate: json['last_active_date'] ?? 0,
      ip: json['ip'] ?? "",
      location: json['location'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "domain_name": this.domainName,
      "bot_user_id": this.botUserId,
      "browser": this.browser,
      "platform": this.platform,
      "log_in_date": this.logInDate,
      "last_active_date": this.lastActiveDate,
      "ip": this.ip,
      "location": this.location,
    };
  }

  static const CONSTRUCTOR = 'connectedWebsite';

  @override
  String getConstructor() => CONSTRUCTOR;
}
