import 'package:flutter/material.dart';

class FoodTipHeader extends StatelessWidget {
  const FoodTipHeader({
    Key? key,
    required this.heading,
    required this.icon,
    required this.color,
  }) : super(key: key);

  final String heading;
  final IconData icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 5, 0, 2),
          child: Text(
            heading,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 2.0,
              color: color,
              width: 100,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Icon(
                icon,
                color: color,
              ),
            ),
            Container(
              height: 2.0,
              color: color,
              width: 100,
            ),
          ],
        ),
      ],
    );
  }
}
