part of '../tdapi.dart';

class CancelDownloadFile extends TdFunction {
  /// Stops the downloading of a file. If a file has already been downloaded, does nothing
  CancelDownloadFile(
      {required this.fileId, required this.onlyIfPending, this.extra});

  /// [fileId] Identifier of a file to stop downloading
  int fileId;

  /// [onlyIfPending] Pass true to stop downloading only if it hasn't been started, i.e. request hasn't been sent to server
  bool onlyIfPending;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory CancelDownloadFile.fromJson(Map<String, dynamic> json) {
    return CancelDownloadFile(
      fileId: json['file_id'] ?? 0,
      onlyIfPending: json['only_if_pending'] ?? false,
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "file_id": this.fileId,
      "only_if_pending": this.onlyIfPending,
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'cancelDownloadFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
