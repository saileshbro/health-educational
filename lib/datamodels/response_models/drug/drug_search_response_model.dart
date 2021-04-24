import 'package:health_educational/datamodels/models/drug/drug.dart';
import 'package:json_annotation/json_annotation.dart';
part 'drug_search_response_model.g.dart';

@JsonSerializable(
  explicitToJson: true,
)
class DrugSearchResponseModel {
  final List<Drug> drugs;
  DrugSearchResponseModel({
    required this.drugs,
  });
  factory DrugSearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$DrugSearchResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$DrugSearchResponseModelToJson(this);
}
