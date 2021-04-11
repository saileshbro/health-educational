import 'package:flutter/material.dart';
import 'package:health_educational/features/home/widgets/heart_sliver_appbar.dart';

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
        body: Center(
          child: Text("Health Educational App"),
        ),
      ),
    );
  }
}
