import "package:json_annotation/json_annotation.dart";
part 'drug.g.dart';

@JsonSerializable()
class Drug {
  final String brandName;
  final String genericName;
  final String imageUrl;
  final String dose;
  final String summary;
  final List<Section> sections;

  const Drug({
    required this.brandName,
    required this.genericName,
    required this.imageUrl,
    required this.dose,
    required this.summary,
    required this.sections,
  });
  factory Drug.fromJson(Map<String, dynamic> json) => _$DrugFromJson(json);
  Map<String, dynamic> toJson() => _$DrugToJson(this);
  static List<Drug> toList(List json) {
    return json.map((item) => Drug.fromJson(item)).toList();
  }
}

@JsonSerializable()
class Section {
  final String title;
  final String content;

  const Section({
    required this.title,
    required this.content,
  });
  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
  Map<String, dynamic> toJson() => _$SectionToJson(this);
  static List<Section> toList(List json) {
    return json.map((item) => Section.fromJson(item)).toList();
  }
}
