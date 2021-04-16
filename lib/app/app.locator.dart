// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:dio/dio.dart';
import 'package:stacked/stacked.dart';

import '../services/api/i_api_service.dart';
import '../services/api/r_api_service.dart';
import '../services/dio_service.dart';

final locator = StackedLocator.instance;

void setupLocator() {
  locator.registerSingleton<Dio>(DioService.getDioObject());
  locator.registerSingleton<IAPIService>(RAPIService());
}
