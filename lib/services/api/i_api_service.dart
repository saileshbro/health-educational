import 'package:health_educational/datamodels/response_models/disease/disease_response_model.dart';
import 'package:health_educational/datamodels/response_models/home/home_response_model.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';
import 'package:health_educational/datamodels/response_models/symptoms/symptom_response_model.dart';

abstract class IAPIService {
  Future<HomeResponseModel> getHomeData();
  Future<DiseaseResponseModel> getAllDiseases();
  Future<NewResponseModel> getAllNews();
  Future<SymptomResponseModel> getAllSymptoms();
}
