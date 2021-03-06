import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/symptoms/symptom_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class ISymptomRepository {
  Future<Either<NetworkFailure, SymptomResponseModel>> getSymptoms();
}
