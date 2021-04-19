import "package:json_annotation/json_annotation.dart";
part 'new.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class New {
  @JsonKey(name: "news_id")
  final int id;
  final String title;
  final String body;
  final String description;
  final String imageUrl;
  final String writtenBy;
  final DateTime createdAt;
  final DateTime updatedAt;

  const New({
    required this.id,
    required this.title,
    required this.body,
    required this.description,
    required this.imageUrl,
    required this.writtenBy,
    required this.createdAt,
    required this.updatedAt,
  });
  factory New.fromJson(Map<String, dynamic> json) => _$NewFromJson(json);
  Map<String, dynamic> toJson() => _$NewToJson(this);
  static List<New> toList(List json) {
    return json.map((item) => New.fromJson(item)).toList();
  }
}
