import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/disease/disease_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class IDiseaseRepository {
  Future<Either<NetworkFailure, DiseaseResponseModel>> getDiseases();
}
