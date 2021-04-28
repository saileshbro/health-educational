import 'package:flutter/material.dart';

class BloodDonationResult extends StatelessWidget {
  const BloodDonationResult({
    Key? key,
    required this.nextDonationDate,
    required this.date,
  }) : super(key: key);

  final DateTime nextDonationDate;
  final DateTime date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Card(
        elevation: 3,
        child: Column(
          children: <Widget>[
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Text(
                        'You can donate blood after ${nextDonationDate.day}-${nextDonationDate.month}-${nextDonationDate.year}',
                        style: Theme.of(context).textTheme.headline5,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Image(
                      image: AssetImage('assets/images/icons/donor.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              width: double.maxFinite,
              color: Colors.black26,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Text(
                'Date of last donation: ${date.day}-${date.month}-${date.year}',
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
