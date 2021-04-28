import 'package:health_educational/datamodels/models/food_tip/food.dart';
import 'package:json_annotation/json_annotation.dart';

part 'food_tip.g.dart';

@JsonSerializable(explicitToJson: true)
class FoodTip {
  final String disease;
  final List<Food> eat;
  final List<Food> avoid;
  FoodTip({
    required this.disease,
    required this.eat,
    required this.avoid,
  });
  factory FoodTip.fromJson(Map<String, dynamic> json) =>
      _$FoodTipFromJson(json);
  Map<String, dynamic> toJson() => _$FoodTipToJson(this);
}
