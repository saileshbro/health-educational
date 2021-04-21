import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/repository/disease/i_disease_repository.dart';
import 'package:health_educational/datamodels/home/disease/disease_response_model.dart';
import 'package:stacked/stacked.dart';

class DiseaseViewModel extends FutureViewModel {
  late final DiseaseResponseModel data;
  final IDiseaseRepository repository = locator<IDiseaseRepository>();
  @override
  Future<void> futureToRun() async {
    final result = await repository.getDiseases();
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
