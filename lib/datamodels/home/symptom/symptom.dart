import "package:json_annotation/json_annotation.dart";
part 'symptom.g.dart';

@JsonSerializable()
class Symptom {
  final int id;
  final String title;
  final String description;
  final String body;
  const Symptom({
    required this.id,
    required this.title,
    required this.description,
    required this.body,
  });
  factory Symptom.fromJson(Map<String, dynamic> json) =>
      _$SymptomFromJson(json);
  Map<String, dynamic> toJson() => _$SymptomToJson(this);
  static List<Symptom> toList(List json) {
    return json.map((item) => Symptom.fromJson(item)).toList();
  }
}
