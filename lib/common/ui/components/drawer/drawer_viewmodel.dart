import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class DrawerViewModel extends BaseViewModel {
  final NavigationService navigationService = locator<NavigationService>();
  void toDiseases() {
    if (navigationService.currentRoute != Routes.diseaseView) {
      navigationService.navigateTo(Routes.diseaseView);
    }
  }

  void toSymptoms() {
    if (navigationService.currentRoute != Routes.symptomView) {
      navigationService.navigateTo(Routes.symptomView);
    }
  }
    void toNews() {
    if (navigationService.currentRoute != Routes.newView) {
      navigationService.navigateTo(Routes.newView);
    }
  }
}
