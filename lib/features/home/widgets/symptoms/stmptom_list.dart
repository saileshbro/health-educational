import 'package:flutter/material.dart';
import 'package:health_educational/features/home/widgets/symptoms/k_symptom_card.dart';

class SymptomList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          KSymptomCard(),
        ],
      ),
    );
  }
}
