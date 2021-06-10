part of '../tdapi.dart';

class StorageStatisticsFast extends TdObject {
  /// Contains approximate storage usage statistics, excluding files of unknown file type
  StorageStatisticsFast(
      {required this.filesSize,
      required this.fileCount,
      required this.databaseSize,
      required this.languagePackDatabaseSize,
      required this.logSize,
      this.extra});

  /// [filesSize] Approximate total size of files
  int filesSize;

  /// [fileCount] Approximate number of files
  int fileCount;

  /// [databaseSize] Size of the database
  int databaseSize;

  /// [languagePackDatabaseSize] Size of the language pack database
  int languagePackDatabaseSize;

  /// [logSize] Size of the TDLib internal log
  int logSize;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StorageStatisticsFast.fromJson(Map<String, dynamic> json) {
    return StorageStatisticsFast(
      filesSize: json['files_size'] ?? 0,
      fileCount: json['file_count'] ?? 0,
      databaseSize: json['database_size'] ?? 0,
      languagePackDatabaseSize: json['language_pack_database_size'] ?? 0,
      logSize: json['log_size'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "files_size": this.filesSize,
      "file_count": this.fileCount,
      "database_size": this.databaseSize,
      "language_pack_database_size": this.languagePackDatabaseSize,
      "log_size": this.logSize,
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsFast';

  @override
  String getConstructor() => CONSTRUCTOR;
}
