import 'package:dio/dio.dart';
import 'package:health_educational/features/home/home_view.dart';
import 'package:health_educational/services/api/i_api_service.dart';
import 'package:health_educational/services/api/r_api_service.dart';
import 'package:health_educational/services/dio_service.dart';
import 'package:stacked/stacked_annotations.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: HomeView,
    initial: true,
  )
], dependencies: [
  DependencyRegistration(
    classType: DioService,
    asType: Dio,
    resolveUsing: DioService.getDioObject,
  ),
  DependencyRegistration(
    classType: RAPIService,
    asType: IAPIService,
  ),
])
class App {}
