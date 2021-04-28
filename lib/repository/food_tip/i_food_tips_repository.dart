import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/food_tip/food_tips_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class IFoodTipsRepository {
  Future<Either<NetworkFailure, FoodTipsResponseModel>> getFoodTips();
}
