part of '../tdapi.dart';

class StorageStatisticsByFileType extends TdObject {
  /// Contains the storage usage statistics for a specific file type
  StorageStatisticsByFileType(
      {required this.fileType, required this.size, required this.count});

  /// [fileType] File type
  FileType fileType;

  /// [size] Total size of the files
  int size;

  /// [count] Total number of files
  int count;

  /// Parse from a json
  factory StorageStatisticsByFileType.fromJson(Map<String, dynamic> json) {
    return StorageStatisticsByFileType(
      fileType: FileType.fromJson(json['file_type'] ?? <String, dynamic>{}),
      size: json['size'] ?? 0,
      count: json['count'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_type": this.fileType.toJson(),
      "size": this.size,
      "count": this.count,
    };
  }

  static const CONSTRUCTOR = 'storageStatisticsByFileType';

  @override
  String getConstructor() => CONSTRUCTOR;
}
