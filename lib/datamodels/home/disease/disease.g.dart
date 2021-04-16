// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disease _$DiseaseFromJson(Map<String, dynamic> json) {
  return Disease(
    id: json['id'] as int,
    title: json['title'] as String,
    description: json['description'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$DiseaseToJson(Disease instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'body': instance.body,
    };
