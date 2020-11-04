import 'package:json_annotation/json_annotation.dart';

part 'top.g.dart';

@JsonSerializable()
class TopHeadlines {
  final String author;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  TopHeadlines(
      {this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory TopHeadlines.fromJson(Map<String, dynamic> json) =>
      _$TopHeadlinesFromJson(json);
}
