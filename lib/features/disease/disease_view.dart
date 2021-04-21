import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/features/disease/disease_viewmodel.dart';
import 'package:health_educational/datamodels/home/disease/disease_response_model.dart';
import 'package:health_educational/features/home/widgets/diseases/k_disease_card.dart';

import 'package:stacked/stacked.dart';

class DiseaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewModelBuilder<DiseaseViewModel>.nonReactive(
        viewModelBuilder: () => locator<DiseaseViewModel>(),
        builder: (
          BuildContext context,
          DiseaseViewModel model,
          Widget? child,
        ) {
          if (model.isBusy) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final DiseaseResponseModel response = model.data;
          return ListView.builder(
            itemCount: response.diseases.length,
            itemBuilder: (context, i) => KDiseaseCard(
              disease: response.diseases[i],
            ),
          );
        },
      ),
    );
  }
}
