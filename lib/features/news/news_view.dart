import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/common/ui/widgets/news/k_new_card.dart';
import 'package:health_educational/datamodels/response_models/news/new_response_model.dart';

import 'package:health_educational/features/news/news_viewmodel.dart';

import 'package:stacked/stacked.dart';

class NewView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "News",
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ViewModelBuilder<NewViewModel>.reactive(
        viewModelBuilder: () => locator<NewViewModel>(),
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        builder: (
          BuildContext context,
          NewViewModel model,
          Widget? child,
        ) {
          if (model.isBusy) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final NewResponseModel response = model.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: response.news.length,
            itemBuilder: (context, i) => KNewsCard(
              news: response.news[i],
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
          );
        },
      ),
    );
  }
}
