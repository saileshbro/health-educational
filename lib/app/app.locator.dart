// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../common/ui/components/drawer/drawer_viewmodel.dart';
import '../features/blood_donation/blood_donation_view_model.dart';
import '../features/bmi/bmi_calculator_view_model.dart';
import '../features/disease/disease_viewmodel.dart';
import '../features/food_tips/food_tips_view_model.dart';
import '../features/health_tools/drug_information/drug_information_viewmodel.dart';
import '../features/health_tools/first_aid/first_aid_viewmodel.dart';
import '../features/home/home_viewmodel.dart';
import '../features/news/news_viewmodel.dart';
import '../features/symptom/symptom_viewmodel.dart';
import '../repository/disease/i_disease_repository.dart';
import '../repository/disease/r_disease_repository.dart';
import '../repository/drug/i_drug_repository.dart';
import '../repository/drug/r_drug_repository.dart';
import '../repository/first_aid/i_first_aid_repository.dart';
import '../repository/first_aid/r_first_aid_repository.dart';
import '../repository/food_tip/i_food_tips_repository.dart';
import '../repository/food_tip/r_food_tips_repository.dart';
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
  locator.registerLazySingleton<Dio>(() => DioService.getDioObject());
  locator.registerLazySingleton<IAPIService>(() => RAPIService());
  locator.registerLazySingleton<IHomeRepository>(() => RHomeRepository());
  locator.registerLazySingleton<IDiseaseRepository>(() => RDiseaseRepository());
  locator.registerLazySingleton<ISymptomRepository>(() => RSymptomRepository());
  locator.registerLazySingleton<INewRepository>(() => RNewRepository());
  locator.registerLazySingleton<IDrugRepository>(() => RDrugRepository());
  locator
      .registerLazySingleton<IFirstAidRepository>(() => RFirstAidRepository());
  locator
      .registerLazySingleton<IFoodTipsRepository>(() => RFoodTipsRepository());
  locator.registerLazySingleton(() => HomeViewModel());
  locator.registerLazySingleton(() => DiseaseViewModel());
  locator.registerLazySingleton(() => FirstAidViewModel());
  locator.registerLazySingleton(() => SymptomViewModel());
  locator.registerLazySingleton(() => NewViewModel());
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DrawerViewModel());
  locator.registerFactory(() => DrugInformationViewModel());
  locator.registerLazySingleton(() => BloodDonationViewModel());
  locator.registerLazySingleton(() => BMICalculatorViewModel());
  locator.registerLazySingleton(() => FoodTipsViewModel());
}
