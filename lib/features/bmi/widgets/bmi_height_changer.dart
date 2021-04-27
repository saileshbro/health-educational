import 'package:flutter/material.dart';

import 'package:health_educational/features/bmi/gender_enum.dart';

class BMIHeightChanger extends StatelessWidget {
  final Gender gender;
  final double height;
  final void Function(double height) onHeightChanged;
  const BMIHeightChanger({
    Key? key,
    required this.gender,
    required this.height,
    required this.onHeightChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              'HEIGHT (cm)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 0.2,
              width: double.infinity,
              color: Colors.black,
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              height.toString(),
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Slider(
                value: height,
                max: 220,
                min: 100,
                divisions: 120,
                onChanged: onHeightChanged,
              ),
            ),
            Expanded(
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: <Widget>[
                  Positioned(
                    child: Image(
                      image: gender == Gender.male
                          ? AssetImage('assets/images/icons/male.png')
                          : AssetImage('assets/images/icons/female.png'),
                      fit: BoxFit.fill,
                      color: gender == Gender.female
                          ? Color(0XFFF2669C)
                          : Color(0XFF2B86D3),
                      height: height,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
