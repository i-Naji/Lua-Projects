part of '../tdapi.dart';

class Session extends TdObject {
  /// Contains information about one session in a Telegram application used by the current user. Sessions should be shown to the user in the returned order
  Session(
      {required this.id,
      required this.isCurrent,
      required this.isPasswordPending,
      required this.apiId,
      required this.applicationName,
      required this.applicationVersion,
      required this.isOfficialApplication,
      required this.deviceModel,
      required this.platform,
      required this.systemVersion,
      required this.logInDate,
      required this.lastActiveDate,
      required this.ip,
      required this.country,
      required this.region,
      this.extra});

  /// [id] Session identifier
  int id;

  /// [isCurrent] True, if this session is the current session
  bool isCurrent;

  /// [isPasswordPending] True, if a password is needed to complete authorization of the session
  bool isPasswordPending;

  /// [apiId] Telegram API identifier, as provided by the application
  int apiId;

  /// [applicationName] Name of the application, as provided by the application
  String applicationName;

  /// [applicationVersion] The version of the application, as provided by the application
  String applicationVersion;

  /// [isOfficialApplication] True, if the application is an official application or uses the api_id of an official application
  bool isOfficialApplication;

  /// [deviceModel] Model of the device the application has been run or is running on, as provided by the application
  String deviceModel;

  /// [platform] Operating system the application has been run or is running on, as provided by the application
  String platform;

  /// [systemVersion] Version of the operating system the application has been run or is running on, as provided by the application
  String systemVersion;

  /// [logInDate] Point in time (Unix timestamp) when the user has logged in
  int logInDate;

  /// [lastActiveDate] Point in time (Unix timestamp) when the session was last used
  int lastActiveDate;

  /// [ip] IP address from which the session was created, in human-readable format
  String ip;

  /// [country] A two-letter country code for the country from which the session was created, based on the IP address
  String country;

  /// [region] Region code from which the session was created, based on the IP address
  String region;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory Session.fromJson(Map<String, dynamic> json) {
    return Session(
      id: int.tryParse(json['id'] ?? "") ?? 0,
      isCurrent: json['is_current'] ?? false,
      isPasswordPending: json['is_password_pending'] ?? false,
      apiId: json['api_id'] ?? 0,
      applicationName: json['application_name'] ?? "",
      applicationVersion: json['application_version'] ?? "",
      isOfficialApplication: json['is_official_application'] ?? false,
      deviceModel: json['device_model'] ?? "",
      platform: json['platform'] ?? "",
      systemVersion: json['system_version'] ?? "",
      logInDate: json['log_in_date'] ?? 0,
      lastActiveDate: json['last_active_date'] ?? 0,
      ip: json['ip'] ?? "",
      country: json['country'] ?? "",
      region: json['region'] ?? "",
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "is_current": this.isCurrent,
      "is_password_pending": this.isPasswordPending,
      "api_id": this.apiId,
      "application_name": this.applicationName,
      "application_version": this.applicationVersion,
      "is_official_application": this.isOfficialApplication,
      "device_model": this.deviceModel,
      "platform": this.platform,
      "system_version": this.systemVersion,
      "log_in_date": this.logInDate,
      "last_active_date": this.lastActiveDate,
      "ip": this.ip,
      "country": this.country,
      "region": this.region,
    };
  }

  static const CONSTRUCTOR = 'session';

  @override
  String getConstructor() => CONSTRUCTOR;
}
