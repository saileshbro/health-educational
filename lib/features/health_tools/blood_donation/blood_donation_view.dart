import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/features/health_tools/blood_donation/blood_donation_view_model.dart';
import 'package:health_educational/features/health_tools/blood_donation/widgets/blood_donation_result.dart';
import 'package:health_educational/features/health_tools/blood_donation/widgets/donation_date_picker.dart';
import 'package:health_educational/features/health_tools/blood_donation/widgets/top_header.dart';
import 'package:stacked/stacked.dart';

class BloodDonationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BloodDonationViewModel>.reactive(
      disposeViewModel: false,
      viewModelBuilder: () => locator<BloodDonationViewModel>(),
      builder: (
        BuildContext context,
        BloodDonationViewModel model,
        Widget? child,
      ) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Blood Donation",
              style: TextStyle(
                color: Colors.red[700],
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                const TopHeader(),
                DonationDatePicker(
                  date: model.date,
                  onDateChanged: model.onDateChanged,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF629DDC),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    child: Text(
                      'Calculate Next Eligible Date',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            color: Colors.white,
                          ),
                    ),
                    onPressed: model.calculate,
                  ),
                ),
                SizedBox(height: 20),
                Expanded(
                  child: AnimatedCrossFade(
                    duration: const Duration(milliseconds: 100),
                    crossFadeState: model.showResult
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    firstChild: BloodDonationResult(
                      date: model.date,
                      nextDonationDate: model.nextDonationDate,
                    ),
                    secondChild: const SizedBox.shrink(),
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
