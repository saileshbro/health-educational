import 'package:dio/dio.dart';
import 'package:health_educational/common/ui/components/drawer/drawer_viewmodel.dart';
import 'package:health_educational/features/health_tools/blood_donation/blood_donation_view.dart';
import 'package:health_educational/features/health_tools/blood_donation/blood_donation_view_model.dart';
import 'package:health_educational/features/health_tools/bmi/bmi_calculator_view.dart';
import 'package:health_educational/features/health_tools/bmi/bmi_calculator_view_model.dart';
import 'package:health_educational/features/health_tools/bmi/bmi_result_view.dart';
import 'package:health_educational/features/disease/disease_view.dart';
import 'package:health_educational/features/disease/disease_viewmodel.dart';
import 'package:health_educational/features/disease/each_disease_view.dart';
import 'package:health_educational/features/drug/each_drug_view.dart';
import 'package:health_educational/features/health_tools/food_tips/each_food_tip_view.dart';
import 'package:health_educational/features/health_tools/food_tips/food_tips_view.dart';
import 'package:health_educational/features/health_tools/food_tips/food_tips_view_model.dart';
import 'package:health_educational/features/health_tools/all_tools_view.dart';
import 'package:health_educational/features/health_tools/drug_information/drug_information_view.dart';
import 'package:health_educational/features/health_tools/drug_information/drug_information_viewmodel.dart';
import 'package:health_educational/features/health_tools/first_aid/each_first_aid_view.dart';
import 'package:health_educational/features/health_tools/first_aid/first_aid_view.dart';
import 'package:health_educational/features/health_tools/first_aid/first_aid_viewmodel.dart';
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
import 'package:health_educational/repository/first_aid/i_first_aid_repository.dart';
import 'package:health_educational/repository/first_aid/r_first_aid_repository.dart';
import 'package:health_educational/repository/food_tip/i_food_tips_repository.dart';
import 'package:health_educational/repository/food_tip/r_food_tips_repository.dart';
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

@StackedApp(
  logger: const StackedLogger(),
  routes: [
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
      page: EachFirstAidView,
    ),
    MaterialRoute(
      page: AllToolsView,
    ),
    MaterialRoute(
      page: DrugInformationView,
    ),
    MaterialRoute(
      page: FirstAidView,
    ),
    MaterialRoute(
      page: BMICalculatorView,
    ),
    MaterialRoute(
      page: BMIResultView,
    ),
    MaterialRoute(
      page: BloodDonationView,
    ),
    MaterialRoute(
      page: FoodTipsView,
    ),
    MaterialRoute(
      page: EachFoodTipView,
    ),
  ],
  dependencies: [
    LazySingleton(
      classType: DioService,
      asType: Dio,
      resolveUsing: DioService.getDioObject,
    ),
    LazySingleton(
      classType: RAPIService,
      asType: IAPIService,
    ),
    LazySingleton(
      classType: RHomeRepository,
      asType: IHomeRepository,
    ),
    LazySingleton(
      classType: RDiseaseRepository,
      asType: IDiseaseRepository,
    ),
    LazySingleton(
      classType: RSymptomRepository,
      asType: ISymptomRepository,
    ),
    LazySingleton(
      classType: RNewRepository,
      asType: INewRepository,
    ),
    LazySingleton(
      classType: RDrugRepository,
      asType: IDrugRepository,
    ),
    LazySingleton(
      classType: RFirstAidRepository,
      asType: IFirstAidRepository,
    ),
    LazySingleton(
      classType: RFoodTipsRepository,
      asType: IFoodTipsRepository,
    ),
    LazySingleton(
      classType: HomeViewModel,
    ),
    LazySingleton(
      classType: DiseaseViewModel,
    ),
    LazySingleton(
      classType: FirstAidViewModel,
    ),
    LazySingleton(
      classType: SymptomViewModel,
    ),
    LazySingleton(
      classType: NewViewModel,
    ),
    LazySingleton(
      classType: NavigationService,
    ),
    LazySingleton(
      classType: DrawerViewModel,
    ),
    Factory(
      classType: DrugInformationViewModel,
    ),
    LazySingleton(
      classType: BloodDonationViewModel,
    ),
    LazySingleton(
      classType: BMICalculatorViewModel,
    ),
    LazySingleton(
      classType: FoodTipsViewModel,
    ),
  ],
)
class App {}
