// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'every.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EveryThing _$EveryThingFromJson(Map<String, dynamic> json) {
  return EveryThing(
    author: json['author'] as String,
    title: json['title'] as String,
    url: json['url'] as String,
    urlToImage: json['urlToImage'] as String,
    publishedAt: json['publishedAt'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$EveryThingToJson(EveryThing instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'url': instance.url,
      'urlToImage': instance.urlToImage,
      'publishedAt': instance.publishedAt,
      'content': instance.content,
    };
