// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_aid.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstAid _$FirstAidFromJson(Map<String, dynamic> json) {
  return FirstAid(
    id: json['first_aid_id'] as int,
    title: json['title'] as String,
    imageUrl: json['image_url'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$FirstAidToJson(FirstAid instance) => <String, dynamic>{
      'first_aid_id': instance.id,
      'title': instance.title,
      'image_url': instance.imageUrl,
      'body': instance.body,
    };
