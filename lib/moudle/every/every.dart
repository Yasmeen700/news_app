import 'package:json_annotation/json_annotation.dart';

part 'every.g.dart';

@JsonSerializable()
class EveryThing {
  final String author;
  final String title;
  final String url;
  final String urlToImage;
  final String publishedAt;
  final String content;

  EveryThing(
      {this.author,
      this.title,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  factory EveryThing.fromJson(Map<String, dynamic> json) =>
      _$EveryThingFromJson(json);
}
