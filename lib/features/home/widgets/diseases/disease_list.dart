import 'package:flutter/material.dart';
import 'package:health_educational/features/home/widgets/diseases/k_disease_card.dart';

class DiseaseList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          KDiseaseCard(),
        ],
      ),
    );
  }
}
