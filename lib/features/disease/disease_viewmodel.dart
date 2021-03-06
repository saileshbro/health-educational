import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/response_models/disease/disease_response_model.dart';
import 'package:health_educational/repository/disease/i_disease_repository.dart';
import 'package:stacked/stacked.dart';

class DiseaseViewModel extends FutureViewModel {
  late final DiseaseResponseModel data;
  final IDiseaseRepository repository = locator<IDiseaseRepository>();
  final logger = getLogger("DiseaseViewModel");
  @override
  Future<void> futureToRun() async {
    final result = await repository.getDiseases();
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
