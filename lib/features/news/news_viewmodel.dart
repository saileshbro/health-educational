import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.logger.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';
import 'package:health_educational/repository/news/i_new_repository.dart';

import 'package:stacked/stacked.dart';

class NewViewModel extends FutureViewModel {
  late final NewResponseModel data;
  final INewRepository repository = locator<INewRepository>();
  final logger = getLogger("NewViewModel");
  @override
  Future<void> futureToRun() async {
    final result = await repository.getNews();
    return result.fold((failure) {
      logger.e(failure.toString);
      setError(failure);
    }, (data) {
      logger.d("Data fetced!");
      onData(data);
    });
  }

  @override
  void onData(data) {
    this.data = data;
    super.onData(data);
  }
}
