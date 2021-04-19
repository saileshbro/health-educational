import 'package:flutter/material.dart';
import 'package:health_educational/datamodels/home/disease/disease.dart';
import 'package:health_educational/features/home/widgets/diseases/k_disease_card.dart';

class DiseaseList extends StatelessWidget {
  final List<Disease> diseases;

  const DiseaseList({Key? key, required this.diseases}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: diseases.length,
        itemBuilder: (context, index) => KDiseaseCard(disease: diseases[index]),
        separatorBuilder: (contex, index) => const SizedBox(width: 12),
      ),
    );
  }
}
