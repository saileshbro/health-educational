import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:health_educational/repository/news/i_new_repository.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RNewRepository implements INewRepository {
  final apiService = locator<IAPIService>();

  @override
  Future<Either<NetworkFailure, NewResponseModel>> getNews() async {
    try {
      final result = await apiService.getAllNews();
      return right(result);
    } on NetworkFailure catch (e) {
      return left(e);
    }
  }
}
