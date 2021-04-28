// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../datamodels/models/disease/disease.dart';
import '../datamodels/models/drug/drug.dart';
import '../datamodels/models/first_aid/first_aid.dart';
import '../datamodels/models/new/new.dart';
import '../datamodels/models/symptom/symptom.dart';
import '../features/blood_donation/blood_donation_view.dart';
import '../features/bmi/bmi_calculator_view.dart';
import '../features/bmi/bmi_result_view.dart';
import '../features/disease/disease_view.dart';
import '../features/disease/each_disease_view.dart';
import '../features/drug/each_drug_view.dart';
import '../features/health_tools/all_tools_view.dart';
import '../features/health_tools/drug_information/drug_information_view.dart';
import '../features/health_tools/first_aid/each_first_aid_view.dart';
import '../features/health_tools/first_aid/first_aid_view.dart';
import '../features/home/home_view.dart';
import '../features/news/each_news_view.dart';
import '../features/news/news_view.dart';
import '../features/symptom/each_symptom_view.dart';
import '../features/symptom/symptom_view.dart';

class Routes {
  static const String homeView = '/';
  static const String diseaseView = '/disease-view';
  static const String symptomView = '/symptom-view';
  static const String newView = '/new-view';
  static const String eachDiseaseView = '/each-disease-view';
  static const String eachNewView = '/each-new-view';
  static const String eachSymptomView = '/each-symptom-view';
  static const String eachDrugView = '/each-drug-view';
  static const String eachFirstAidView = '/each-first-aid-view';
  static const String allToolsView = '/all-tools-view';
  static const String drugInformationView = '/drug-information-view';
  static const String firstAidView = '/first-aid-view';
  static const String bMICalculatorView = '/b-mi-calculator-view';
  static const String bMIResultView = '/b-mi-result-view';
  static const String bloodDonationView = '/blood-donation-view';
  static const all = <String>{
    homeView,
    diseaseView,
    symptomView,
    newView,
    eachDiseaseView,
    eachNewView,
    eachSymptomView,
    eachDrugView,
    eachFirstAidView,
    allToolsView,
    drugInformationView,
    firstAidView,
    bMICalculatorView,
    bMIResultView,
    bloodDonationView,
  };
}

class StackedRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.homeView, page: HomeView),
    RouteDef(Routes.diseaseView, page: DiseaseView),
    RouteDef(Routes.symptomView, page: SymptomView),
    RouteDef(Routes.newView, page: NewView),
    RouteDef(Routes.eachDiseaseView, page: EachDiseaseView),
    RouteDef(Routes.eachNewView, page: EachNewView),
    RouteDef(Routes.eachSymptomView, page: EachSymptomView),
    RouteDef(Routes.eachDrugView, page: EachDrugView),
    RouteDef(Routes.eachFirstAidView, page: EachFirstAidView),
    RouteDef(Routes.allToolsView, page: AllToolsView),
    RouteDef(Routes.drugInformationView, page: DrugInformationView),
    RouteDef(Routes.firstAidView, page: FirstAidView),
    RouteDef(Routes.bMICalculatorView, page: BMICalculatorView),
    RouteDef(Routes.bMIResultView, page: BMIResultView),
    RouteDef(Routes.bloodDonationView, page: BloodDonationView),
  ];
  @override
  Map<Type, StackedRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, StackedRouteFactory>{
    HomeView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => HomeView(),
        settings: data,
      );
    },
    DiseaseView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DiseaseView(),
        settings: data,
      );
    },
    SymptomView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SymptomView(),
        settings: data,
      );
    },
    NewView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => NewView(),
        settings: data,
      );
    },
    EachDiseaseView: (data) {
      var args = data.getArgs<EachDiseaseViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EachDiseaseView(
          key: args.key,
          disease: args.disease,
        ),
        settings: data,
      );
    },
    EachNewView: (data) {
      var args = data.getArgs<EachNewViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EachNewView(
          key: args.key,
          news: args.news,
        ),
        settings: data,
      );
    },
    EachSymptomView: (data) {
      var args = data.getArgs<EachSymptomViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EachSymptomView(
          key: args.key,
          symptom: args.symptom,
        ),
        settings: data,
      );
    },
    EachDrugView: (data) {
      var args = data.getArgs<EachDrugViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EachDrugView(
          key: args.key,
          drug: args.drug,
        ),
        settings: data,
      );
    },
    EachFirstAidView: (data) {
      var args = data.getArgs<EachFirstAidViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => EachFirstAidView(
          key: args.key,
          firstAid: args.firstAid,
        ),
        settings: data,
      );
    },
    AllToolsView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => AllToolsView(),
        settings: data,
      );
    },
    DrugInformationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DrugInformationView(),
        settings: data,
      );
    },
    FirstAidView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => FirstAidView(),
        settings: data,
      );
    },
    BMICalculatorView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BMICalculatorView(),
        settings: data,
      );
    },
    BMIResultView: (data) {
      var args = data.getArgs<BMIResultViewArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => BMIResultView(
          key: args.key,
          bmi: args.bmi,
        ),
        settings: data,
      );
    },
    BloodDonationView: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BloodDonationView(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// EachDiseaseView arguments holder class
class EachDiseaseViewArguments {
  final Key? key;
  final Disease disease;
  EachDiseaseViewArguments({this.key, required this.disease});
}

/// EachNewView arguments holder class
class EachNewViewArguments {
  final Key? key;
  final New news;
  EachNewViewArguments({this.key, required this.news});
}

/// EachSymptomView arguments holder class
class EachSymptomViewArguments {
  final Key? key;
  final Symptom symptom;
  EachSymptomViewArguments({this.key, required this.symptom});
}

/// EachDrugView arguments holder class
class EachDrugViewArguments {
  final Key? key;
  final Drug drug;
  EachDrugViewArguments({this.key, required this.drug});
}

/// EachFirstAidView arguments holder class
class EachFirstAidViewArguments {
  final Key? key;
  final FirstAid firstAid;
  EachFirstAidViewArguments({this.key, required this.firstAid});
}

/// BMIResultView arguments holder class
class BMIResultViewArguments {
  final Key? key;
  final double bmi;
  BMIResultViewArguments({this.key, required this.bmi});
}
