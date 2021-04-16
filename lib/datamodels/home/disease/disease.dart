import "package:json_annotation/json_annotation.dart";
part 'disease.g.dart';

@JsonSerializable()
class Disease {
  final int id;
  final String title;
  final String description;
  final String body;
  const Disease({
    required this.id,
    required this.title,
    required this.description,
    required this.body,
  });
  factory Disease.fromJson(Map<String, dynamic> json) =>
      _$DiseaseFromJson(json);
  Map<String, dynamic> toJson() => _$DiseaseToJson(this);
  static List<Disease> toList(List json) {
    return json.map((item) => Disease.fromJson(item)).toList();
  }
}
