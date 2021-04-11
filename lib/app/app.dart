import 'package:health_educational/features/home/home_view.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: HomeView,
    initial: true,
  )
])
class App {}
