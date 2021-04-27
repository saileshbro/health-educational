import 'package:dartz/dartz.dart';
import 'package:health_educational/datamodels/response_models/first_aid/first_aid_response_model.dart';
import 'package:health_educational/misc/network_failure.dart';

abstract class IFirstAidRepository {
  Future<Either<NetworkFailure, FirstAidResponseModel>> getFirstAids();
}
