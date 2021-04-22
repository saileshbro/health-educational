import 'package:flutter/material.dart';
import 'package:flutter_card_swipper/widgets/flutter_page_indicator/flutter_page_indicator.dart';

import 'package:health_educational/common/ui/widgets/drugs/k_drug_card.dart';
import 'package:flutter_card_swipper/flutter_card_swiper.dart';
import 'package:health_educational/datamodels/models/drug/drug.dart';

class DrugList extends StatelessWidget {
  final List<Drug> drugs;
  const DrugList({Key? key, required this.drugs}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Swiper(
        viewportFraction: 0.7,
        scale: 0.9,
        itemBuilder: (BuildContext context, int index) {
          return KDrugCard(drug: drugs[index]);
        },
        indicatorLayout: PageIndicatorLayout.NONE,
        loop: true,
        itemCount: drugs.length,
      ),
    );
  }
}
