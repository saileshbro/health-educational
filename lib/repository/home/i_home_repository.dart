import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class IHomeRepository {
  Future<Either<NetworkFailure, HomeResponseModel>> getHomeData();
}
