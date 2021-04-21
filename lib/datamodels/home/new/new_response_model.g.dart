// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewResponseModel _$NewResponseModelFromJson(Map<String, dynamic> json) {
  return NewResponseModel(
    news: (json['news'] as List<dynamic>)
        .map((e) => New.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$NewResponseModelToJson(NewResponseModel instance) =>
    <String, dynamic>{
      'news': instance.news,
    };
