// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'symptom_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SymptomResponseModel _$SymptomResponseModelFromJson(Map<String, dynamic> json) {
  return SymptomResponseModel(
    symptoms: (json['symptoms'] as List<dynamic>)
        .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$SymptomResponseModelToJson(
        SymptomResponseModel instance) =>
    <String, dynamic>{
      'symptoms': instance.symptoms,
    };
