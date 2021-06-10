part of '../tdapi.dart';

class DownloadFile extends TdFunction {
  /// Downloads a file from the cloud. Download progress and completion of the download will be notified through updateFile updates
  DownloadFile(
      {required this.fileId,
      required this.priority,
      required this.offset,
      required this.limit,
      required this.synchronous,
      this.extra});

  /// [fileId] Identifier of the file to download
  int fileId;

  /// [priority] Priority of the download (1-32). The higher the priority, the earlier the file will be downloaded. If the priorities of two files are equal, then the last one for which downloadFile was called will be downloaded first
  int priority;

  /// [offset] The starting position from which the file should be downloaded
  int offset;

  /// [limit] Number of bytes which should be downloaded starting from the "offset" position before the download will be automatically cancelled; use 0 to download without a limit
  int limit;

  /// [synchronous] If false, this request returns file state just after the download has been started. If true, this request returns file state only after. the download has succeeded, has failed, has been cancelled or a new downloadFile request with different offset/limit parameters was sent
  bool synchronous;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory DownloadFile.fromJson(Map<String, dynamic> json) {
    return DownloadFile(
      fileId: json['file_id'] ?? 0,
      priority: json['priority'] ?? 0,
      offset: json['offset'] ?? 0,
      limit: json['limit'] ?? 0,
      synchronous: json['synchronous'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "priority": this.priority,
      "offset": this.offset,
      "limit": this.limit,
      "synchronous": this.synchronous,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'downloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
