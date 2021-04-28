import 'package:health_educational/datamodels/models/food_tip/food_tip.dart';
import 'package:json_annotation/json_annotation.dart';
part 'food_tips_response_model.g.dart';

@JsonSerializable(explicitToJson: true)
class FoodTipsResponseModel {
  final List<FoodTip> foodTips;
  FoodTipsResponseModel({
    required this.foodTips,
  });
  factory FoodTipsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FoodTipsResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$FoodTipsResponseModelToJson(this);
}
