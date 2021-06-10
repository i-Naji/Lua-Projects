part of '../tdapi.dart';

class PageBlockRelatedArticle extends TdObject {
  /// Contains information about a related article
  PageBlockRelatedArticle(
      {required this.url,
      required this.title,
      required this.description,
      this.photo,
      required this.author,
      required this.publishDate});

  /// [url] Related article URL
  String url;

  /// [title] Article title; may be empty
  String title;

  /// [description] Article description; may be empty
  String description;

  /// [photo] Article photo; may be null
  Photo? photo;

  /// [author] Article author; may be empty
  String author;

  /// [publishDate] Point in time (Unix timestamp) when the article was published; 0 if unknown
  int publishDate;

  /// Parse from a json
  factory PageBlockRelatedArticle.fromJson(Map<String, dynamic> json) {
    return PageBlockRelatedArticle(
      url: json['url'] ?? "",
      title: json['title'] ?? "",
      description: json['description'] ?? "",
      photo: Photo.fromJson(json['photo'] ?? <String, dynamic>{}),
      author: json['author'] ?? "",
      publishDate: json['publish_date'] ?? 0,
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      "@type": CONSTRUCTOR,
      "url": this.url,
      "title": this.title,
      "description": this.description,
      "photo": this.photo == null ? null : this.photo!.toJson(),
      "author": this.author,
      "publish_date": this.publishDate,
    };
  }

  static const CONSTRUCTOR = 'pageBlockRelatedArticle';

  @override
  String getConstructor() => CONSTRUCTOR;
}
