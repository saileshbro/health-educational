import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:health_educational/datamodels/home/new/new_response_model.dart';
import 'package:health_educational/datamodels/home/disease/disease_response_model.dart';
import 'package:health_educational/datamodels/home/symptom/symptom_response_model.dart';

abstract class IAPIService {
  Future<HomeResponseModel> getHomeData();
  Future<DiseaseResponseModel> getAllDiseases();
  Future<NewResponseModel> getAllNews();
  Future<SymptomResponseModel> getAllSymptoms();
}
