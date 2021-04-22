import 'package:flutter/material.dart';

class CategoryLabel extends StatelessWidget {
  final String label;

  const CategoryLabel({Key? key, required this.label}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          label,
          style: Theme.of(context).textTheme.headline5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 3.0,
              color: Colors.red,
              width: 0.18 * width,
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 0.02 * height,
              width: 0.04 * width,
              child: Image.asset('assets/images/icons/blood-drop.png'),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              height: 3.0,
              width: 0.18 * width,
              color: Colors.red,
            ),
          ],
        )
      ],
    );
  }
}
