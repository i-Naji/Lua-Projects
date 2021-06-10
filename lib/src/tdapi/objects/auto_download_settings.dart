part of '../tdapi.dart';

class AutoDownloadSettings extends TdObject {
  /// Contains auto-download settings
  AutoDownloadSettings(
      {required this.isAutoDownloadEnabled,
      required this.maxPhotoFileSize,
      required this.maxVideoFileSize,
      required this.maxOtherFileSize,
      required this.videoUploadBitrate,
      required this.preloadLargeVideos,
      required this.preloadNextAudio,
      required this.useLessDataForCalls});

  /// [isAutoDownloadEnabled] True, if the auto-download is enabled
  bool isAutoDownloadEnabled;

  /// [maxPhotoFileSize] The maximum size of a photo file to be auto-downloaded
  int maxPhotoFileSize;

  /// [maxVideoFileSize] The maximum size of a video file to be auto-downloaded
  int maxVideoFileSize;

  /// [maxOtherFileSize] The maximum size of other file types to be auto-downloaded
  int maxOtherFileSize;

  /// [videoUploadBitrate] The maximum suggested bitrate for uploaded videos
  int videoUploadBitrate;

  /// [preloadLargeVideos] True, if the beginning of video files needs to be preloaded for instant playback
  bool preloadLargeVideos;

  /// [preloadNextAudio] True, if the next audio track needs to be preloaded while the user is listening to an audio file
  bool preloadNextAudio;

  /// [useLessDataForCalls] True, if "use less data for calls" option needs to be enabled
  bool useLessDataForCalls;

  /// Parse from a json
  factory AutoDownloadSettings.fromJson(Map<String, dynamic> json) {
    return AutoDownloadSettings(
      isAutoDownloadEnabled: json['is_auto_download_enabled'] ?? false,
      maxPhotoFileSize: json['max_photo_file_size'] ?? 0,
      maxVideoFileSize: json['max_video_file_size'] ?? 0,
      maxOtherFileSize: json['max_other_file_size'] ?? 0,
      videoUploadBitrate: json['video_upload_bitrate'] ?? 0,
      preloadLargeVideos: json['preload_large_videos'] ?? false,
      preloadNextAudio: json['preload_next_audio'] ?? false,
      useLessDataForCalls: json['use_less_data_for_calls'] ?? false,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "is_auto_download_enabled": this.isAutoDownloadEnabled,
      "max_photo_file_size": this.maxPhotoFileSize,
      "max_video_file_size": this.maxVideoFileSize,
      "max_other_file_size": this.maxOtherFileSize,
      "video_upload_bitrate": this.videoUploadBitrate,
      "preload_large_videos": this.preloadLargeVideos,
      "preload_next_audio": this.preloadNextAudio,
      "use_less_data_for_calls": this.useLessDataForCalls,
    };
  }

  static const CONSTRUCTOR = 'autoDownloadSettings';

  @override
  String getConstructor() => CONSTRUCTOR;
}
