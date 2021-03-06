import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/datamodels/response_models/disease/disease_response_model.dart';
import 'package:health_educational/features/disease/disease_viewmodel.dart';
import 'package:health_educational/common/ui/widgets/diseases/k_disease_card.dart';

import 'package:stacked/stacked.dart';

class DiseaseView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Diseases",
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ViewModelBuilder<DiseaseViewModel>.reactive(
        viewModelBuilder: () => locator<DiseaseViewModel>(),
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
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
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: response.diseases.length,
            itemBuilder: (context, i) => KDiseaseCard(
              disease: response.diseases[i],
              extended: true,
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
          );
        },
      ),
    );
  }
}
