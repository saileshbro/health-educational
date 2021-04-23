import 'package:flutter/material.dart';
import 'package:health_educational/features/health_tools/widgets/k_tools_card.dart';

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
            ),
            KToolCard(
              imageUrl: "assets/images/icons/medicine.png",
              name: "Information on Common Drugs",
            ),
            KToolCard(
              imageUrl: "assets/images/icons/firstaid.png",
              name: "First Aid",
            ),
            KToolCard(
              imageUrl: "assets/images/icons/bmi.png",
              name: "BMI Calculator",
            ),
            KToolCard(
              imageUrl: "assets/images/icons/blooddonation.png",
              name: "Blood Donation Date",
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
