// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disease _$DiseaseFromJson(Map<String, dynamic> json) {
  return Disease(
    id: json['disease_id'] as int,
    disease: json['disease'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$DiseaseToJson(Disease instance) => <String, dynamic>{
      'disease_id': instance.id,
      'disease': instance.disease,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'body': instance.body,
    };
