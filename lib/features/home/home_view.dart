import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/common/ui/components/drawer/k_drawer.dart';
import 'package:health_educational/datamodels/home/home_response_model.dart';
import 'package:health_educational/features/home/home_viewmodel.dart';
import 'package:health_educational/features/home/widgets/category_label.dart';
import 'package:health_educational/features/home/widgets/diseases/disease_list.dart';
import 'package:health_educational/features/home/widgets/drugs/drug_list.dart';
import 'package:health_educational/features/home/widgets/heart_sliver_appbar.dart';
import 'package:health_educational/features/home/widgets/news/news_list.dart';
import 'package:health_educational/features/home/widgets/symptoms/stmptom_list.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late ScrollController controller;
  @override
  void initState() {
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: KDrawer(),
      body: NestedScrollView(
        controller: controller,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          HeartSliverAppBar(
            controller: controller,
          )
        ],
        body: ViewModelBuilder<HomeViewModel>.reactive(
          viewModelBuilder: () => locator<HomeViewModel>(),
          builder: (context, model, child) {
            if (model.isBusy) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            final HomeResponseModel response = model.data;
            return ListView(
              padding: EdgeInsets.all(8),
              children: [
                const CategoryLabel(
                  label: "Diseases",
                ),
                const SizedBox(height: 4),
                DiseaseList(
                  diseases: response.diseases,
                ),
                const SizedBox(height: 12),
                const CategoryLabel(
                  label: "Symptoms",
                ),
                const SizedBox(height: 4),
                SymptomList(
                  symptoms: response.symptoms,
                ),
                const SizedBox(height: 12),
                const CategoryLabel(
                  label: "Drugs",
                ),
                const SizedBox(height: 4),
                DrugList(
                  drugs: response.drugs,
                ),
                const SizedBox(height: 12),
                const CategoryLabel(
                  label: "News",
                ),
                const SizedBox(height: 4),
                NewsList(
                  news: response.news,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
