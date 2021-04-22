import "package:json_annotation/json_annotation.dart";
part 'symptom.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class Symptom {
  @JsonKey(name: "symptom_id")
  final int id;
  final String symptom;
  final String description;
  final String imageUrl;
  final String body;
  const Symptom({
    required this.id,
    required this.symptom,
    required this.description,
    required this.imageUrl,
    required this.body,
  });
  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
  Map<String, dynamic> toJson() => _$SymptomToJson(this);
  static List<Symptom> toList(List json) {
    return json.map((item) => Symptom.fromJson(item)).toList();
  }
}
