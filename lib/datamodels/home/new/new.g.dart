// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

New _$NewFromJson(Map<String, dynamic> json) {
  return New(
    id: json['news_id'] as int,
    title: json['title'] as String,
    body: json['body'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    writtenBy: json['written_by'] as String,
    createdAt: DateTime.parse(json['created_at'] as String),
    updatedAt: DateTime.parse(json['updated_at'] as String),
  );
}

Map<String, dynamic> _$NewToJson(New instance) => <String, dynamic>{
      'news_id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'written_by': instance.writtenBy,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };
