part of '../tdapi.dart';

class TdlibParameters extends TdObject {
  /// Contains parameters for TDLib initialization
  TdlibParameters(
      {required this.useTestDc,
      required this.databaseDirectory,
      required this.filesDirectory,
      required this.useFileDatabase,
      required this.useChatInfoDatabase,
      required this.useMessageDatabase,
      required this.useSecretChats,
      required this.apiId,
      required this.apiHash,
      required this.systemLanguageCode,
      required this.deviceModel,
      required this.systemVersion,
      required this.applicationVersion,
      required this.enableStorageOptimizer,
      required this.ignoreFileNames});

  /// [useTestDc] If set to true, the Telegram test environment will be used instead of the production environment
  bool useTestDc;

  /// [databaseDirectory] The path to the directory for the persistent database; if empty, the current working directory will be used
  String databaseDirectory;

  /// [filesDirectory] The path to the directory for storing files; if empty, database_directory will be used
  String filesDirectory;

  /// [useFileDatabase] If set to true, information about downloaded and uploaded files will be saved between application restarts
  bool useFileDatabase;

  /// [useChatInfoDatabase] If set to true, the library will maintain a cache of users, basic groups, supergroups, channels and secret chats. Implies use_file_database
  bool useChatInfoDatabase;

  /// [useMessageDatabase] If set to true, the library will maintain a cache of chats and messages. Implies use_chat_info_database
  bool useMessageDatabase;

  /// [useSecretChats] If set to true, support for secret chats will be enabled
  bool useSecretChats;

  /// [apiId] Application identifier for Telegram API access, which can be obtained at https://my.telegram.org
  int apiId;

  /// [apiHash] Application identifier hash for Telegram API access, which can be obtained at https://my.telegram.org
  String apiHash;

  /// [systemLanguageCode] IETF language tag of the user's operating system language; must be non-empty
  String systemLanguageCode;

  /// [deviceModel] Model of the device the application is being run on; must be non-empty
  String deviceModel;

  /// [systemVersion] Version of the operating system the application is being run on. If empty, the version is automatically detected by TDLib
  String systemVersion;

  /// [applicationVersion] Application version; must be non-empty
  String applicationVersion;

  /// [enableStorageOptimizer] If set to true, old files will automatically be deleted
  bool enableStorageOptimizer;

  /// [ignoreFileNames] If set to true, original file names will be ignored. Otherwise, downloaded files will be saved under names as close as possible to the original name
  bool ignoreFileNames;

  /// Parse from a json
  factory TdlibParameters.fromJson(Map<String, dynamic> json) {
    return TdlibParameters(
      useTestDc: json['use_test_dc'] ?? false,
      databaseDirectory: json['database_directory'] ?? "",
      filesDirectory: json['files_directory'] ?? "",
      useFileDatabase: json['use_file_database'] ?? false,
      useChatInfoDatabase: json['use_chat_info_database'] ?? false,
      useMessageDatabase: json['use_message_database'] ?? false,
      useSecretChats: json['use_secret_chats'] ?? false,
      apiId: json['api_id'] ?? 0,
      apiHash: json['api_hash'] ?? "",
      systemLanguageCode: json['system_language_code'] ?? "",
      deviceModel: json['device_model'] ?? "",
      systemVersion: json['system_version'] ?? "",
      applicationVersion: json['application_version'] ?? "",
      enableStorageOptimizer: json['enable_storage_optimizer'] ?? false,
      ignoreFileNames: json['ignore_file_names'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "use_test_dc": this.useTestDc,
      "database_directory": this.databaseDirectory,
      "files_directory": this.filesDirectory,
      "use_file_database": this.useFileDatabase,
      "use_chat_info_database": this.useChatInfoDatabase,
      "use_message_database": this.useMessageDatabase,
      "use_secret_chats": this.useSecretChats,
      "api_id": this.apiId,
      "api_hash": this.apiHash,
      "system_language_code": this.systemLanguageCode,
      "device_model": this.deviceModel,
      "system_version": this.systemVersion,
      "application_version": this.applicationVersion,
      "enable_storage_optimizer": this.enableStorageOptimizer,
      "ignore_file_names": this.ignoreFileNames,
    };
  }

  static const CONSTRUCTOR = 'tdlibParameters';

  @override
  String getConstructor() => CONSTRUCTOR;
}
