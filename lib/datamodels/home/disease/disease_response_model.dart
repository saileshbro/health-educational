import 'package:health_educational/datamodels/home/disease/disease.dart';
import 'package:json_annotation/json_annotation.dart';

part 'disease_response_model.g.dart';

@JsonSerializable()
class DiseaseResponseModel {
  final List<Disease> diseases;

  const DiseaseResponseModel({
    required this.diseases,
  });
  factory DiseaseResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DiseaseResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseResponseModelToJson(this);
}
