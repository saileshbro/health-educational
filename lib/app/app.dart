import 'package:dio/dio.dart';
import 'package:health_educational/common/ui/components/drawer/drawer_viewmodel.dart';
import 'package:health_educational/features/disease/disease_view.dart';
import 'package:health_educational/features/disease/disease_viewmodel.dart';
import 'package:health_educational/features/disease/each_disease_view.dart';
import 'package:health_educational/features/drug/each_drug_view.dart';
import 'package:health_educational/features/health_tools/all_tools_view.dart';
import 'package:health_educational/features/health_tools/drug_information/drug_information_view.dart';
import 'package:health_educational/features/health_tools/drug_information/drug_information_viewmodel.dart';
import 'package:health_educational/features/home/home_view.dart';
import 'package:health_educational/features/home/home_viewmodel.dart';
import 'package:health_educational/features/news/each_news_view.dart';
import 'package:health_educational/features/news/news_view.dart';
import 'package:health_educational/features/news/news_viewmodel.dart';
import 'package:health_educational/features/symptom/each_symptom_view.dart';
import 'package:health_educational/features/symptom/symptom_view.dart';
import 'package:health_educational/features/symptom/symptom_viewmodel.dart';
import 'package:health_educational/repository/disease/i_disease_repository.dart';
import 'package:health_educational/repository/disease/r_disease_repository.dart';
import 'package:health_educational/repository/drug/i_drug_repository.dart';
import 'package:health_educational/repository/drug/r_drug_repository.dart';
import 'package:health_educational/repository/home/i_home_repository.dart';
import 'package:health_educational/repository/home/r_home_repository.dart';
import 'package:health_educational/repository/news/i_new_repository.dart';
import 'package:health_educational/repository/news/r_new_repository.dart';
import 'package:health_educational/repository/symptom/i_symptom_repository.dart';
import 'package:health_educational/repository/symptom/r_symptom_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';
import 'package:health_educational/services/api/r_api_service.dart';
import 'package:health_educational/services/dio_service.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: HomeView,
    initial: true,
  ),
  MaterialRoute(
    page: DiseaseView,
  ),
  MaterialRoute(
    page: SymptomView,
  ),
  MaterialRoute(
    page: NewView,
  ),
  MaterialRoute(
    page: EachDiseaseView,
  ),
  MaterialRoute(
    page: EachNewView,
  ),
  MaterialRoute(
    page: EachSymptomView,
  ),
  MaterialRoute(
    page: EachDrugView,
  ),
  MaterialRoute(
    page: AllToolsView,
  ),
  MaterialRoute(
    page: DrugInformationView,
  ),
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
  DependencyRegistration(
    classType: RHomeRepository,
    asType: IHomeRepository,
  ),
  DependencyRegistration(
    classType: RDiseaseRepository,
    asType: IDiseaseRepository,
  ),
  DependencyRegistration(
    classType: RSymptomRepository,
    asType: ISymptomRepository,
  ),
  DependencyRegistration(
    classType: RNewRepository,
    asType: INewRepository,
  ),
  DependencyRegistration(
    classType: RDrugRepository,
    asType: IDrugRepository,
  ),
  Factory(
    classType: HomeViewModel,
  ),
  Singleton(
    classType: DiseaseViewModel,
  ),
  Singleton(
    classType: SymptomViewModel,
  ),
  Singleton(
    classType: NewViewModel,
  ),
  Singleton(
    classType: NavigationService,
  ),
  Singleton(
    classType: DrawerViewModel,
  ),
  Singleton(
    classType: DrugInformationViewModel,
  )
])
class App {}
