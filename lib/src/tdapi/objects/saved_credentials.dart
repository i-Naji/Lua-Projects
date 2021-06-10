part of '../tdapi.dart';

class SavedCredentials extends TdObject {
  /// Contains information about saved card credentials
  SavedCredentials({required this.id, required this.title});

  /// [id] Unique identifier of the saved credentials
  String id;

  /// [title] Title of the saved credentials
  String title;

  /// Parse from a json
  factory SavedCredentials.fromJson(Map<String, dynamic> json) {
    return SavedCredentials(
      id: json['id'] ?? "",
      title: json['title'] ?? "",
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "id": this.id,
      "title": this.title,
    };
  }

  static const CONSTRUCTOR = 'savedCredentials';

  @override
  String getConstructor() => CONSTRUCTOR;
}
