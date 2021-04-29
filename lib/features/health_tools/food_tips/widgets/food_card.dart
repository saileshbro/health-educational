import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:health_educational/datamodels/models/food_tip/food.dart';

class FoodCard extends StatelessWidget {
  final Food food;
  const FoodCard({
    Key? key,
    required this.food,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 60.0,
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: <Widget>[
            Container(
              height: 300,
              width: 200,
              child: CachedNetworkImage(
                imageUrl: food.imageUrl,
                width: 30,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              height: 290,
              width: 200,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.black.withOpacity(0.5),
                    Colors.black.withOpacity(0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
              ),
            ),
            Positioned(
              bottom: 7,
              left: 10,
              child: Text(food.name,
                  style: Theme.of(context).textTheme.headline6?.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
