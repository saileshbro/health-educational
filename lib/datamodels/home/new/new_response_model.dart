import 'package:health_educational/datamodels/home/new/new.dart';
import 'package:json_annotation/json_annotation.dart';

part 'new_response_model.g.dart';

@JsonSerializable()
class NewResponseModel {
  final List<New> news;

  const NewResponseModel({
    required this.news,
  });
  factory NewResponseModel.fromJson(Map<String, dynamic> json) =>
      _$NewResponseModelFromJson(json);
  Map<String, dynamic> toJson() => _$NewResponseModelToJson(this);
}
