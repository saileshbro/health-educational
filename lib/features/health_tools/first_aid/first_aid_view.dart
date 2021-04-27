import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/common/ui/widgets/first_aid/k_first_aid_card.dart';
import 'package:health_educational/datamodels/response_models/first_aid/first_aid_response_model.dart';
import 'package:health_educational/features/health_tools/first_aid/first_aid_viewmodel.dart';
import 'package:stacked/stacked.dart';

class FirstAidView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FirstAidViewModel>.reactive(
      viewModelBuilder: () => locator<FirstAidViewModel>(),
      disposeViewModel: false,
      initialiseSpecialViewModelsOnce: true,
      builder: (
        BuildContext context,
        FirstAidViewModel model,
        Widget? child,
      ) {
        if (model.isBusy) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        final FirstAidResponseModel response = model.data;
        return Scaffold(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          body: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                expandedHeight: 300.0,
                floating: true,
                pinned: true,
                centerTitle: true,
                title: Text(
                  "First Aid".toUpperCase(),
                  style: Theme.of(context).textTheme.bodyText1?.copyWith(
                        fontSize: 20,
                        color: Colors.red[700],
                        fontWeight: FontWeight.w500,
                      ),
                ),
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/images/firstaid.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPadding(
                padding: const EdgeInsets.all(10.0),
                sliver: SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    childAspectRatio: 0.9,
                    mainAxisSpacing: 20,
                  ),
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, index) => KFirstAidCard(
                      firstAid: response.firstAids[index],
                    ),
                    childCount: response.firstAids.length,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
