import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:health_educational/datamodels/home/disease/disease_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/disease/i_disease_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RDiseaseRepository implements IDiseaseRepository {
  final apiService = locator<IAPIService>();

  @override
  Future<Either<NetworkFailure, DiseaseResponseModel>> getDiseases() async {
    try {
      final result = await apiService.getAllDiseases();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    }
  }
}
