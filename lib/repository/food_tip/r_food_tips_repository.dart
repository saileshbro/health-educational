import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:health_educational/datamodels/response_models/food_tip/food_tips_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/food_tip/i_food_tips_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RFoodTipsRepository implements IFoodTipsRepository {
  final apiService = locator<IAPIService>();
  final logger = getLogger("RFoodTipsRepository");
  @override
  Future<Either<NetworkFailure, FoodTipsResponseModel>> getFoodTips() async {
    try {
      final result = await apiService.getAllFoodTips();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}
