import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/response_models/first_aid/first_aid_response_model.dart';
import 'package:health_educational/repository/first_aid/i_first_aid_repository.dart';
import 'package:stacked/stacked.dart';

class FirstAidViewModel extends FutureViewModel {
  late final FirstAidResponseModel data;
  final IFirstAidRepository repository = locator<IFirstAidRepository>();
  final logger = getLogger("FirstAidViewModel");
  @override
  Future<void> futureToRun() async {
    final result = await repository.getFirstAids();
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
