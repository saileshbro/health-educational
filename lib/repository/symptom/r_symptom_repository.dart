import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/home/symptom/symptom_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/symptom/i_symptom_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RSymptomRepository implements ISymptomRepository {
  final apiService = locator<IAPIService>();

  @override
  Future<Either<NetworkFailure, SymptomResponseModel>> getSymptoms() async {
    try {
      final result = await apiService.getAllSymptoms();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    }
  }
}
