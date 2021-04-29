import 'package:flutter/material.dart';

import 'package:health_educational/datamodels/models/food_tip/food_tip.dart';
import 'package:health_educational/features/health_tools/food_tips/widgets/food_tip_header.dart';
import 'package:health_educational/features/health_tools/food_tips/widgets/food_tip_list.dart';

class EachFoodTipView extends StatelessWidget {
  final FoodTip foodTip;
  const EachFoodTipView({
    Key? key,
    required this.foodTip,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          foodTip.disease,
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Column(
          children: [
            FoodTipHeader(
              color: Colors.green,
              icon: Icons.check,
              heading: "What to eat",
            ),
            FoodTipList(
              foods: foodTip.eat,
            ),
            Spacer(),
            FoodTipHeader(
              color: Colors.red,
              icon: Icons.close,
              heading: "What to avoid",
            ),
            FoodTipList(
              foods: foodTip.avoid,
            ),
          ],
        ),
      ),
    );
  }
}
