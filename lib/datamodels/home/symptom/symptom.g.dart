// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Symptom _$SymptomFromJson(Map<String, dynamic> json) {
  return Symptom(
    id: json['symptom_id'] as int,
    symptom: json['symptom'] as String,
    description: json['description'] as String,
    imageUrl: json['image_url'] as String,
    body: json['body'] as String,
  );
}

Map<String, dynamic> _$SymptomToJson(Symptom instance) => <String, dynamic>{
      'symptom_id': instance.id,
      'symptom': instance.symptom,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'body': instance.body,
    };
