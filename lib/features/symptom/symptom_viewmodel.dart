import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/response_models/symptoms/symptom_response_model.dart';

import 'package:health_educational/repository/symptom/i_symptom_repository.dart';
import 'package:stacked/stacked.dart';

class SymptomViewModel extends FutureViewModel {
  late final SymptomResponseModel data;
  final ISymptomRepository repository = locator<ISymptomRepository>();
  final logger = getLogger("SymptomViewModel");
  @override
  Future<void> futureToRun() async {
    final result = await repository.getSymptoms();
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
