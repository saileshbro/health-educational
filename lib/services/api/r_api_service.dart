import 'package:dio/dio.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:health_educational/services/api/i_api_service.dart';

class RAPIService implements IAPIService {
  final Dio dio = locator<Dio>();

  @override
  Future<HomeResponseModel> getHomeData() async {
    final Response<Map<String, dynamic>> _result = await dio.get(
      "home",
    );
    final value = HomeResponseModel.fromJson(_result.data!);
    return value;
  }
}
