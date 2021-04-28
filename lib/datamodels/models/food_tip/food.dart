import 'package:json_annotation/json_annotation.dart';
part 'food.g.dart';

@JsonSerializable()
class Food {
  final String name;
  final String imageUrl;
  const Food({
    required this.name,
    required this.imageUrl,
  });
  factory Food.fromJson(Map<String, dynamic> json) => _$FoodFromJson(json);
  Map<String, dynamic> toJson() => _$FoodToJson(this);
}
