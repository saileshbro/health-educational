import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class INewRepository {
  Future<Either<NetworkFailure, NewResponseModel>> getNews();
}
