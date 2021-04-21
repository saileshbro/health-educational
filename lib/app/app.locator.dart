// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../common/ui/components/drawer/drawer_viewmodel.dart';
import '../features/disease/disease_viewmodel.dart';
import '../features/home/home_viewmodel.dart';
import '../repository/disease/i_disease_repository.dart';
import '../repository/disease/r_disease_repository.dart';
import '../repository/home/i_home_repository.dart';
import '../repository/home/r_home_repository.dart';
import '../repository/news/i_new_repository.dart';
import '../repository/news/r_new_repository.dart';
import '../repository/symptom/i_symptom_repository.dart';
import '../repository/symptom/r_symptom_repository.dart';
import '../services/api/i_api_service.dart';
import '../services/api/r_api_service.dart';
import '../services/dio_service.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerSingleton<Dio>(DioService.getDioObject());
  locator.registerSingleton<IAPIService>(RAPIService());
  locator.registerSingleton<IHomeRepository>(RHomeRepository());
  locator.registerSingleton<IDiseaseRepository>(RDiseaseRepository());
  locator.registerSingleton<ISymptomRepository>(RSymptomRepository());
  locator.registerSingleton<INewRepository>(RNewRepository());
  locator.registerFactory(() => HomeViewModel());
  locator.registerFactory(() => DiseaseViewModel());
  locator.registerSingleton(NavigationService());
  locator.registerSingleton(DrawerViewModel());
}
