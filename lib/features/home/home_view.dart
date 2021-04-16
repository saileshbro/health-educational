import 'package:flutter/material.dart';
import 'package:health_educational/features/home/widgets/category_label.dart';
import 'package:health_educational/features/home/widgets/diseases/disease_list.dart';
import 'package:health_educational/features/home/widgets/heart_sliver_appbar.dart';
import 'package:health_educational/features/home/widgets/symptoms/stmptom_list.dart';

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
      body: NestedScrollView(
        controller: controller,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) =>
            [
          HeartSliverAppBar(
            controller: controller,
          )
        ],
        body: ListView(
          padding: EdgeInsets.all(8),
          children: [
            CategoryLabel(
              label: "Diseases",
            ),
            DiseaseList(),
            SizedBox(height: 12),
            CategoryLabel(
              label: "Symptoms",
            ),
            SymptomList(),
          ],
        ),
      ),
    );
  }
}
