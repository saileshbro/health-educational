import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/drug/drug_search_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class IDrugRepository {
  Future<Either<NetworkFailure, DrugSearchResponseModel>> searchDrugs(
      String query);
}
