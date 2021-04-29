import 'package:flutter/material.dart';

import 'package:health_educational/datamodels/models/food_tip/food.dart';
import 'package:health_educational/features/health_tools/food_tips/widgets/food_card.dart';

class FoodTipList extends StatelessWidget {
  final List<Food> foods;
  const FoodTipList({
    Key? key,
    required this.foods,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: foods.length,
        itemBuilder: (BuildContext context, int index) => FoodCard(
          food: foods[index],
        ),
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(
            width: 13.0,
          );
        },
      ),
    );
  }
}
