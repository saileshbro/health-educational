import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';

import 'package:health_educational/common/ui/widgets/symptoms/k_symptom_card.dart';
import 'package:health_educational/datamodels/response_models/symptoms/symptom_response_model.dart';
import 'package:health_educational/features/symptom/symptom_viewmodel.dart';

import 'package:stacked/stacked.dart';

class SymptomView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Symptoms",
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ViewModelBuilder<SymptomViewModel>.reactive(
        viewModelBuilder: () => locator<SymptomViewModel>(),
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        builder: (
          BuildContext context,
          SymptomViewModel model,
          Widget? child,
        ) {
          if (model.isBusy) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final SymptomResponseModel response = model.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: response.symptoms.length,
            itemBuilder: (context, i) => KSymptomCard(
              symptom: response.symptoms[i],
              extended: true,
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
          );
        },
      ),
    );
  }
}
