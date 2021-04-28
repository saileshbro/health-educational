// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_tips_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodTipsResponseModel _$FoodTipsResponseModelFromJson(
    Map<String, dynamic> json) {
  return FoodTipsResponseModel(
    foodTips: (json['foodTips'] as List<dynamic>)
        .map((e) => FoodTip.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FoodTipsResponseModelToJson(
        FoodTipsResponseModel instance) =>
    <String, dynamic>{
      'foodTips': instance.foodTips.map((e) => e.toJson()).toList(),
    };
