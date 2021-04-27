import 'package:health_educational/datamodels/models/first_aid/first_aid.dart';
import 'package:json_annotation/json_annotation.dart';

part 'first_aid_response_model.g.dart';

@JsonSerializable()
class FirstAidResponseModel {
  @JsonKey(name: "firstaids")
  final List<FirstAid> firstAids;

  const FirstAidResponseModel({
    required this.firstAids,
  });
  factory FirstAidResponseModel.fromJson(Map<String, dynamic> json) =>
      _$FirstAidResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$FirstAidResponseModelToJson(this);
}
