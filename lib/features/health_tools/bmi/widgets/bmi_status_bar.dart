import 'package:flutter/material.dart';
import 'package:health_educational/features/health_tools/bmi/gender_enum.dart';

class BMIStatusBar extends StatelessWidget {
  final Gender gender;
  final num height;
  final num weight;
  const BMIStatusBar({
    Key? key,
    required this.gender,
    required this.height,
    required this.weight,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              gender.toString().split(".").last.toUpperCase(),
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "${weight.toInt()} kg",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Text(
              '${height.toInt()} cm',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
