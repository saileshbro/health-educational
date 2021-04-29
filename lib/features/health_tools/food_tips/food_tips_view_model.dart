import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/response_models/food_tip/food_tips_response_model.dart';
import 'package:health_educational/repository/food_tip/i_food_tips_repository.dart';
import 'package:stacked/stacked.dart';

class FoodTipsViewModel extends FutureViewModel {
  late final FoodTipsResponseModel data;
  final IFoodTipsRepository repository = locator<IFoodTipsRepository>();
  final logger = getLogger("FoodTipsViewModel");
  @override
  Future<void> futureToRun() async {
    final result = await repository.getFoodTips();
    return result.fold((failure) {
      logger.e(failure.toString);
      setError(failure);
    }, (data) {
      logger.d("Data fetced!");
      onData(data);
    });
  }

  @override
  void onData(data) {
    this.data = data;
    super.onData(data);
  }
}
