import 'package:dartz/dartz.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:health_educational/datamodels/response_models/drug/drug_search_response_model.dart';
import 'package:health_educational/repository/drug/i_drug_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RDrugRepository implements IDrugRepository {
  final apiService = locator<IAPIService>();
  final logger = getLogger("RDrugRepository");

  @override
  Future<Either<NetworkFailure, DrugSearchResponseModel>> searchDrugs(
      String query) async {
    try {
      final result = await apiService.searchDrugFromQuery(query);
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}
