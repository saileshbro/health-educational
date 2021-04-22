// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disease_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiseaseResponseModel _$DiseaseResponseModelFromJson(Map<String, dynamic> json) {
  return DiseaseResponseModel(
    diseases: (json['diseases'] as List<dynamic>)
        .map((e) => Disease.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DiseaseResponseModelToJson(
        DiseaseResponseModel instance) =>
    <String, dynamic>{
      'diseases': instance.diseases,
    };
