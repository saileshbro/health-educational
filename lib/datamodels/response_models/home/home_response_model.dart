import 'package:health_educational/datamodels/models/disease/disease.dart';
import 'package:health_educational/datamodels/models/drug/drug.dart';
import 'package:health_educational/datamodels/models/new/new.dart';
import 'package:health_educational/datamodels/models/symptom/symptom.dart';
import 'package:json_annotation/json_annotation.dart';
part 'home_response_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class HomeResponseModel {
  final List<Disease> diseases;
  final List<Symptom> symptoms;
  final List<Drug> drugs;
  final List<New> news;

  const HomeResponseModel({
    required this.diseases,
    required this.symptoms,
    required this.drugs,
    required this.news,
  });
  factory HomeResponseModel.fromJson(Map<String, dynamic> json) =>
      _$HomeResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$HomeResponseModelToJson(this);
  static List<HomeResponseModel> toList(List json) {
    return json.map((item) => HomeResponseModel.fromJson(item)).toList();
  }
}
