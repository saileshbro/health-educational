import 'package:flutter/material.dart';
import 'package:health_educational/common/ui/widgets/symptoms/k_symptom_card.dart';
import 'package:health_educational/datamodels/models/symptom/symptom.dart';

class SymptomList extends StatelessWidget {
  final List<Symptom> symptoms;

  const SymptomList({Key? key, required this.symptoms}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: symptoms.length,
        itemBuilder: (context, index) => KSymptomCard(symptom: symptoms[index]),
        separatorBuilder: (contex, index) => const SizedBox(width: 12),
      ),
    );
  }
}
