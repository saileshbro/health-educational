import 'package:health_educational/datamodels/home/home_response_model.dart';

abstract class IAPIService {
  Future<HomeResponseModel> getHomeData();
}
