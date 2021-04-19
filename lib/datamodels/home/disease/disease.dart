import "package:json_annotation/json_annotation.dart";
part 'disease.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class Disease {
  @JsonKey(name: "disease_id")
  final int id;
  final String disease;
  final String description;
  final String imageUrl;
  final String body;
  const Disease({
    required this.id,
    required this.disease,
    required this.description,
    required this.imageUrl,
    required this.body,
  });
  factory Disease.fromJson(Map<String, dynamic> json) =>
      _$DiseaseFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseToJson(this);
  static List<Disease> toList(List json) {
    return json.map((item) => Disease.fromJson(item)).toList();
  }
}
