import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/common/ui/widgets/name_initial_list_tile.dart';
import 'package:health_educational/datamodels/response_models/food_tip/food_tips_response_model.dart';
import 'package:health_educational/features/health_tools/food_tips/food_tips_view_model.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class FoodTipsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Food Tips",
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ViewModelBuilder<FoodTipsViewModel>.reactive(
        viewModelBuilder: () => locator<FoodTipsViewModel>(),
        disposeViewModel: false,
        initialiseSpecialViewModelsOnce: true,
        builder: (
          BuildContext context,
          FoodTipsViewModel model,
          Widget? child,
        ) {
          if (model.isBusy) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final FoodTipsResponseModel response = model.data;
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 12),
            itemCount: response.foodTips.length,
            itemBuilder: (context, i) => NameInitialListTile(
              label: response.foodTips[i].disease,
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.eachFoodTipView,
                arguments: EachFoodTipViewArguments(
                  foodTip: response.foodTips[i],
                ),
              ),
            ),
            separatorBuilder: (_, __) => const SizedBox(height: 8),
          );
        },
      ),
    );
  }
}
