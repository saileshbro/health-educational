// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import '../datamodels/models/disease/disease.dart';
import '../datamodels/models/drug/drug.dart';
import '../datamodels/models/new/new.dart';
import '../datamodels/models/symptom/symptom.dart';
import '../features/disease/disease_view.dart';
import '../features/disease/each_disease_view.dart';
import '../features/drug/each_drug_view.dart';
import '../features/health_tools/all_tools_view.dart';
import '../features/health_tools/drug_information/drug_information_view.dart';
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
  static const String allToolsView = '/all-tools-view';
  static const String drugInformationView = '/drug-information-view';
  static const all = <String>{
    homeView,
    diseaseView,
    symptomView,
    newView,
    eachDiseaseView,
    eachNewView,
    eachSymptomView,
    eachDrugView,
    allToolsView,
    drugInformationView,
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
    RouteDef(Routes.allToolsView, page: AllToolsView),
    RouteDef(Routes.drugInformationView, page: DrugInformationView),
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
