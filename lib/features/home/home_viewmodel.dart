import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:health_educational/repository/home/i_home_repository.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends FutureViewModel {
  late final HomeResponseModel data;
  final IHomeRepository repository = locator<IHomeRepository>();
  @override
  Future<void> futureToRun() async {
    final result = await repository.getHomeData();
    return result.fold((failure) {
      setError(failure);
    }, (data) {
      onData(data);
    });
  }

  @override
  void onData(data) {
    this.data = data;
    super.onData(data);
  }
}
