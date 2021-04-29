import 'package:flutter/material.dart';

class TopHeader extends StatelessWidget {
  const TopHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Calculate Your',
                style: TextStyle(
                  fontSize: 19,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Eligible Date for Blood Donation',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 35,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image(
              image: AssetImage('assets/images/icons/blood-drop.png'),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}
