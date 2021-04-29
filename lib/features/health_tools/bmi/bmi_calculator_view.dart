import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/features/health_tools/bmi/bmi_calculator_view_model.dart';
import 'package:health_educational/features/health_tools/bmi/gender_enum.dart';
import 'package:health_educational/features/health_tools/bmi/widgets/bmi_gender_selector.dart';
import 'package:health_educational/features/health_tools/bmi/widgets/bmi_height_changer.dart';
import 'package:health_educational/features/health_tools/bmi/widgets/bmi_status_bar.dart';
import 'package:health_educational/features/health_tools/bmi/widgets/bmi_weight_changer.dart';
import 'package:stacked/stacked.dart';

class BMICalculatorView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BMICalculatorViewModel>.reactive(
      viewModelBuilder: () => locator<BMICalculatorViewModel>(),
      disposeViewModel: false,
      builder: (
        BuildContext context,
        BMICalculatorViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "BMI Calculator",
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: <Widget>[
                BMIStatusBar(
                  gender: Gender.male,
                  height: model.height,
                  weight: model.weight,
                ),
                SizedBox(height: 8),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: BMIGenderSelector(
                                gender: model.gender,
                                onGenderChanged: model.onGenderChanged,
                              ),
                            ),
                            SizedBox(height: 8),
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                child: BMIWeightChanger(
                                  onWeightChanged: model.onWeightChanged,
                                  weight: model.weight,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: SizedBox(
                          width: double.infinity,
                          child: BMIHeightChanger(
                            height: model.height,
                            gender: model.gender,
                            onHeightChanged: model.onHeightChanged,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Calculate!',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    onPressed: model.calculateBMI,
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
