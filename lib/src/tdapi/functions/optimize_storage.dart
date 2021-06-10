part of '../tdapi.dart';

class OptimizeStorage extends TdFunction {
  /// Optimizes storage usage, i.e. deletes some files and returns new storage usage statistics. Secret thumbnails can't be deleted
  OptimizeStorage(
      {required this.size,
      required this.ttl,
      required this.count,
      required this.immunityDelay,
      required this.fileTypes,
      required this.chatIds,
      required this.excludeChatIds,
      required this.returnDeletedFileStatistics,
      required this.chatLimit,
      this.extra});

  /// [size] Limit on the total size of files after deletion. Pass -1 to use the default limit
  int size;

  /// [ttl] Limit on the time that has passed since the last time a file was accessed (or creation time for some filesystems). Pass -1 to use the default limit
  int ttl;

  /// [count] Limit on the total count of files after deletion. Pass -1 to use the default limit
  int count;

  /// [immunityDelay] The amount of time after the creation of a file during which it can't be deleted, in seconds. Pass -1 to use the default value
  int immunityDelay;

  /// [fileTypes] If not empty, only files with the given type(s) are considered. By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted
  List<FileType> fileTypes;

  /// [chatIds] If not empty, only files from the given chats are considered. Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos)
  List<int> chatIds;

  /// [excludeChatIds] If not empty, files from the given chats are excluded. Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos)
  List<int> excludeChatIds;

  /// [returnDeletedFileStatistics] Pass true if statistics about the files that were deleted must be returned instead of the whole storage usage statistics. Affects only returned statistics
  bool returnDeletedFileStatistics;

  /// [chatLimit] Same as in getStorageStatistics. Affects only returned statistics
  int chatLimit;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory OptimizeStorage.fromJson(Map<String, dynamic> json) {
    return OptimizeStorage(
      size: json['size'] ?? 0,
      ttl: json['ttl'] ?? 0,
      count: json['count'] ?? 0,
      immunityDelay: json['immunity_delay'] ?? 0,
      fileTypes: List<FileType>.from((json['file_types'] ?? [])
          .map((item) => FileType.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      chatIds: List<int>.from(
          (json['chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      excludeChatIds: List<int>.from(
          (json['exclude_chat_ids'] ?? []).map((item) => item ?? 0).toList()),
      returnDeletedFileStatistics:
          json['return_deleted_file_statistics'] ?? false,
      chatLimit: json['chat_limit'] ?? 0,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "size": this.size,
      "ttl": this.ttl,
      "count": this.count,
      "immunity_delay": this.immunityDelay,
      "file_types": this.fileTypes.map((i) => i.toJson()).toList(),
      "chat_ids": this.chatIds.map((i) => i).toList(),
      "exclude_chat_ids": this.excludeChatIds.map((i) => i).toList(),
      "return_deleted_file_statistics": this.returnDeletedFileStatistics,
      "chat_limit": this.chatLimit,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'optimizeStorage';

  @override
  String getConstructor() => CONSTRUCTOR;
}
