import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/models/drug/drug.dart';
import 'package:health_educational/repository/drug/i_drug_repository.dart';
import 'package:stacked/stacked.dart';

class DrugInformationViewModel extends BaseViewModel {
  final IDrugRepository drugRepository = locator<IDrugRepository>();
  final logger = getLogger("DrugInformationViewModel");
  final List<Drug> drugs = [];
  String query = '';

  Future<void> onSearchPressed() async {
    if (query.isEmpty) {
      logger.wtf("Searched with empty string!");
      return;
    }
    setBusy(true);
    final result = await drugRepository.searchDrugs(query);
    setBusy(false);
    return result.fold((failure) {
      logger.e(failure.toString);
      setError(failure);
    }, (data) {
      logger.d("Data fetced!");
      drugs.clear();
      drugs.addAll(data.drugs);
      notifyListeners();
    });
  }

  void onQueryChanged(String str) => query = str;
}
