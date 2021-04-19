import 'package:dio/dio.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/constants/constants.dart';
import 'package:health_educational/misc/network_failure.dart';
import 'package:logger/logger.dart';

class DioService {
  static Dio getDioObject() {
    Dio dio = Dio();
    dio.options = BaseOptions(
      baseUrl: Constants.kBaseUrl,
    );
    Logger log = getLogger("DioService");
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (requestOptions, handler) {
        log.d("DIO REQUEST ${requestOptions.method}",
            requestOptions.baseUrl + requestOptions.uri.path);
        handler.next(requestOptions);
      },
      onResponse: (Response response, handler) {
        handler.next(response);
      },
      onError: (e, handler) {
        _customDioErrorInterceptor(e, log);
      },
    ));
    return dio;
  }
}

_customDioErrorInterceptor(DioError error, Logger logger) {
  if (error.response != null) {
    try {
      logger.d("DIO ERROR RESPONSE", error.response!.data.toString(),
          error.stackTrace);
      throw NetworkFailure(
          message: error.message, code: error.response!.statusCode!);
    } catch (e) {
      print(e);
      if (e is NetworkFailure) rethrow;
      throw NetworkFailure(message: "Some Error occured", code: 500);
    }
  } else {
    print(
        "\n\nSomething happened in setting up or sending the DIO request that triggered an Error.\n\n");

    logger.d("DIO ERROR", "response is null", error.stackTrace);
    throw NetworkFailure(
      message:
          "Service is temporary unavailable,\ncheck your network connection.",
      code: 500,
    );
  }
}
