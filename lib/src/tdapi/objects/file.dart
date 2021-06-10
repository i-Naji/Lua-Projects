part of '../tdapi.dart';

class File extends TdObject {
  /// Represents a file
  File(
      {required this.id,
      required this.size,
      required this.expectedSize,
      required this.local,
      required this.remote,
      this.extra});

  /// [id] Unique file identifier
  int id;

  /// [size] File size; 0 if unknown
  int size;

  /// [expectedSize] Expected file size in case the exact file size is unknown, but an approximate size is known. Can be used to show download/upload progress
  int expectedSize;

  /// [local] Information about the local copy of the file
  LocalFile local;

  /// [remote] Information about the remote copy of the file
  RemoteFile remote;

  /// callback sign
  @override
  dynamic extra;

  /// Parse from a json
  factory File.fromJson(Map<String, dynamic> json) {
    return File(
      id: json['id'] ?? 0,
      size: json['size'] ?? 0,
      expectedSize: json['expected_size'] ?? 0,
      local: LocalFile.fromJson(json['local'] ?? <String, dynamic>{}),
      remote: RemoteFile.fromJson(json['remote'] ?? <String, dynamic>{}),
      extra: json['@extra'],
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "size": this.size,
      "expected_size": this.expectedSize,
      "local": this.local.toJson(),
      "remote": this.remote.toJson(),
    };
  }

  static const CONSTRUCTOR = 'file';

  @override
  String getConstructor() => CONSTRUCTOR;
}
