import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/features/health_tools/widgets/k_tools_card.dart';
import 'package:stacked_services/stacked_services.dart';

class AllToolsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Health Tools and Tips',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
        child: GridView.count(
          // primary: false,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          mainAxisSpacing: 0,
          children: <Widget>[
            KToolCard(
              imageUrl: "assets/images/icons/diet.png",
              name: "Food Tips",
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.foodTipsView,
              ),
            ),
            KToolCard(
              imageUrl: "assets/images/icons/medicine.png",
              name: "Information on Common Drugs",
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.drugInformationView,
              ),
            ),
            KToolCard(
              imageUrl: "assets/images/icons/firstaid.png",
              name: "First Aid",
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.firstAidView,
              ),
            ),
            KToolCard(
              imageUrl: "assets/images/icons/bmi.png",
              name: "BMI Calculator",
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.bMICalculatorView,
              ),
            ),
            KToolCard(
              imageUrl: "assets/images/icons/blooddonation.png",
              name: "Blood Donation Date",
              onPressed: () => locator<NavigationService>().navigateTo(
                Routes.bloodDonationView,
              ),
            ),
            KToolCard(
              imageUrl: "assets/images/icons/water.png",
              name: "Daily Water Requirement",
            ),
          ],
        ),
      ),
    );
  }
}
