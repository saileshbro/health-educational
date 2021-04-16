// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

New _$NewFromJson(Map<String, dynamic> json) {
  return New(
    newsId: json['newsId'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
    description: json['description'] as String,
    imageUrl: json['imageUrl'] as String,
    writtenBy: json['writtenBy'] as String,
    createdAt: DateTime.parse(json['createdAt'] as String),
    updatedAt: DateTime.parse(json['updatedAt'] as String),
  );
}

Map<String, dynamic> _$NewToJson(New instance) => <String, dynamic>{
      'newsId': instance.newsId,
      'title': instance.title,
      'body': instance.body,
      'description': instance.description,
      'imageUrl': instance.imageUrl,
      'writtenBy': instance.writtenBy,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
