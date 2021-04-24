// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drug_search_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DrugSearchResponseModel _$DrugSearchResponseModelFromJson(
    Map<String, dynamic> json) {
  return DrugSearchResponseModel(
    drugs: (json['drugs'] as List<dynamic>)
        .map((e) => Drug.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$DrugSearchResponseModelToJson(
        DrugSearchResponseModel instance) =>
    <String, dynamic>{
      'drugs': instance.drugs.map((e) => e.toJson()).toList(),
    };
