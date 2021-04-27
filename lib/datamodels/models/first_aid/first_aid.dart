import "package:json_annotation/json_annotation.dart";
part 'first_aid.g.dart';

@JsonSerializable(
  fieldRename: FieldRename.snake,
)
class FirstAid {
  @JsonKey(name: "first_aid_id")
  final int id;
  final String title;
  final String imageUrl;
  final String body;
  const FirstAid({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.body,
  });
  factory FirstAid.fromJson(Map<String, dynamic> json) =>
      _$FirstAidFromJson(json);
  Map<String, dynamic> toJson() => _$FirstAidToJson(this);
}
