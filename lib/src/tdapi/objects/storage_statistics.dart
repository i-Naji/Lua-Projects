part of '../tdapi.dart';

class StorageStatistics extends TdObject {
  /// Contains the exact storage usage statistics split by chats and file type
  StorageStatistics(
      {required this.size,
      required this.count,
      required this.byChat,
      this.extra});

  /// [size] Total size of files
  int size;

  /// [count] Total number of files
  int count;

  /// [byChat] Statistics split by chats
  List<StorageStatisticsByChat> byChat;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory StorageStatistics.fromJson(Map<String, dynamic> json) {
    return StorageStatistics(
      size: json['size'] ?? 0,
      count: json['count'] ?? 0,
      byChat: List<StorageStatisticsByChat>.from((json['by_chat'] ?? [])
          .map((item) =>
              StorageStatisticsByChat.fromJson(item ?? <String, dynamic>{}))
          .toList()),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "size": this.size,
      "count": this.count,
      "by_chat": this.byChat.map((i) => i.toJson()).toList(),
    };
  }

  static const CONSTRUCTOR = 'storageStatistics';

  @override
  String getConstructor() => CONSTRUCTOR;
}
