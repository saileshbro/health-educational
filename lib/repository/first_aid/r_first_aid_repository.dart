import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:health_educational/datamodels/response_models/first_aid/first_aid_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/first_aid/i_first_aid_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RFirstAidRepository implements IFirstAidRepository {
  final apiService = locator<IAPIService>();
  final logger = getLogger("RFirstAidRepository");
  @override
  Future<Either<NetworkFailure, FirstAidResponseModel>> getFirstAids() async {
    try {
      final result = await apiService.getAllFirstAids();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    } catch (e) {
      logger.e(e.toString());
      rethrow;
    }
  }
}
