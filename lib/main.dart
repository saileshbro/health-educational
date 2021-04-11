import 'package:flutter/material.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/theme/theme.dart';
import 'package:stacked_services/stacked_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Health Educational App',
      theme: kLightTheme(context),
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
