part of '../tdapi.dart';

class GetRemoteFile extends TdFunction {
  /// Returns information about a file by its remote getRemoteFile; this is an offline request. Can be used to register a URL as a file for further uploading, or sending as a message. Even the request succeeds, the file can be used only if it is still accessible to the user.. For example, if the file is from a message, then the message must be not deleted and accessible to the user. If the file database is disabled, then the corresponding object with the file must be preloaded by the application
  GetRemoteFile(
      {required this.remoteFileId, required this.fileType, this.extra});

  /// [remoteFileId] Remote identifier of the file to get
  String remoteFileId;

  /// [fileType] File type, if known
  FileType fileType;

  /// callback sign
  dynamic extra;

  /// Parse from a json
  factory GetRemoteFile.fromJson(Map<String, dynamic> json) {
    return GetRemoteFile(
      remoteFileId: json['remote_file_id'] ?? "",
      fileType: FileType.fromJson(json['file_type'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "remote_file_id": this.remoteFileId,
      "file_type": this.fileType.toJson(),
      "@extra": this.extra,
    };
  }

  static const CONSTRUCTOR = 'getRemoteFile';

  @override
  String getConstructor() => CONSTRUCTOR;
}
