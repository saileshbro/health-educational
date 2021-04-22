import 'package:dio/dio.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/response_models/disease/disease_response_model.dart';
import 'package:health_educational/datamodels/response_models/home/home_response_model.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';
import 'package:health_educational/datamodels/response_models/symptoms/symptom_response_model.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RAPIService implements IAPIService {
  final Dio dio = locator<Dio>();

  @override
  Future<HomeResponseModel> getHomeData() async {
    final Response<Map<String, dynamic>> _result = await dio.get("/home");
    final value = HomeResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DiseaseResponseModel> getAllDiseases() async {
    final Response<Map<String, dynamic>> _result = await dio.get("/diseases");
    final value = DiseaseResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<NewResponseModel> getAllNews() async {
    final Response<Map<String, dynamic>> _result = await dio.get("/news");
    final value = NewResponseModel.fromJson(_result.data!);
    return value;
  }

  @override
  Future<SymptomResponseModel> getAllSymptoms() async {
    final Response<Map<String, dynamic>> _result = await dio.get("/symptoms");
    final value = SymptomResponseModel.fromJson(_result.data!);
    return value;
  }
}
