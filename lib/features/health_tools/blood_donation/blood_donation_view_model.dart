import 'package:stacked/stacked.dart';

class BloodDonationViewModel extends BaseViewModel {
  DateTime date = DateTime.now();
  bool showResult = false;
  DateTime get nextDonationDate => date.add(
        Duration(days: 56),
      );
  void onDateChanged(DateTime? date) {
    showResult = false;
    if (date != null) {
      this.date = date;
      notifyListeners();
    }
  }

  void calculate() {
    showResult = true;
    notifyListeners();
  }
}
