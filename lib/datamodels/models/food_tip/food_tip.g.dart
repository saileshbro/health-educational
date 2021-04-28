// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_tip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FoodTip _$FoodTipFromJson(Map<String, dynamic> json) {
  return FoodTip(
    disease: json['disease'] as String,
    eat: (json['eat'] as List<dynamic>)
        .map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
    avoid: (json['avoid'] as List<dynamic>)
        .map((e) => Food.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FoodTipToJson(FoodTip instance) => <String, dynamic>{
      'disease': instance.disease,
      'eat': instance.eat.map((e) => e.toJson()).toList(),
      'avoid': instance.avoid.map((e) => e.toJson()).toList(),
    };
