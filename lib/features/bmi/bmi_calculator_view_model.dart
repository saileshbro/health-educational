import 'dart:math';

import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/features/bmi/gender_enum.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class BMICalculatorViewModel extends BaseViewModel {
  final navigationService = locator<NavigationService>();
  Gender gender = Gender.male;
  double weight = 70;
  double height = 170;
  void onHeightChanged(double height) {
    this.height = height;
    return notifyListeners();
  }

  void onWeightChanged(int weight) {
    this.weight = weight.toDouble();
    return notifyListeners();
  }

  void onGenderChanged(Gender gender) {
    this.gender = gender;
    return notifyListeners();
  }

  void calculateBMI() {
    final double bmi = weight / pow(height / 100, 2);
    navigationService.navigateTo(
      Routes.bMIResultView,
      arguments: BMIResultViewArguments(bmi: bmi),
    );
  }
}
