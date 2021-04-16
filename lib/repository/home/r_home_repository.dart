import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/home/i_home_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RHomeRepository implements IHomeRepository {
  final apiService = locator<IAPIService>();
  @override
  Future<Either<NetworkFailure, HomeResponseModel>> getHomeData() async {
    try {
      final result = await apiService.getHomeData();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    }
  }
}
