import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/home/new/new_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class INewRepository {
  Future<Either<NetworkFailure, NewResponseModel>> getNews();
}
