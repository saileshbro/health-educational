// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'first_aid_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FirstAidResponseModel _$FirstAidResponseModelFromJson(
    Map<String, dynamic> json) {
  return FirstAidResponseModel(
    firstAids: (json['firstaids'] as List<dynamic>)
        .map((e) => FirstAid.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FirstAidResponseModelToJson(
        FirstAidResponseModel instance) =>
    <String, dynamic>{
      'firstaids': instance.firstAids,
    };
