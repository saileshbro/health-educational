// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HomeResponseModel _$HomeResponseModelFromJson(Map<String, dynamic> json) {
  return HomeResponseModel(
    diseases: (json['diseases'] as List<dynamic>)
        .map((e) => Disease.fromJson(e as Map<String, dynamic>))
        .toList(),
    symptoms: (json['symptoms'] as List<dynamic>)
        .map((e) => Symptom.fromJson(e as Map<String, dynamic>))
        .toList(),
    drugs: (json['drugs'] as List<dynamic>)
        .map((e) => Drug.fromJson(e as Map<String, dynamic>))
        .toList(),
    news: (json['news'] as List<dynamic>)
        .map((e) => New.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$HomeResponseModelToJson(HomeResponseModel instance) =>
    <String, dynamic>{
      'diseases': instance.diseases.map((e) => e.toJson()).toList(),
      'symptoms': instance.symptoms.map((e) => e.toJson()).toList(),
      'drugs': instance.drugs.map((e) => e.toJson()).toList(),
      'news': instance.news.map((e) => e.toJson()).toList(),
    };
