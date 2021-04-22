import 'package:health_educational/datamodels/models/symptom/symptom.dart';
import 'package:json_annotation/json_annotation.dart';

part 'symptom_response_model.g.dart';

@JsonSerializable()
class SymptomResponseModel {
  final List<Symptom> symptoms;

  const SymptomResponseModel({
    required this.symptoms,
  });
  factory SymptomResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SymptomResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$SymptomResponseModelToJson(this);
}
