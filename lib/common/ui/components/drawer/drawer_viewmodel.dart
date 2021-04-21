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
}
