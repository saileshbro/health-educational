import 'package:flutter/material.dart';

class BMIResultView extends StatelessWidget {
  final double bmi;
  const BMIResultView({
    Key? key,
    required this.bmi,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result",
          style: TextStyle(
            color: Colors.red[700],
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Your BMI Score',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.blueAccent),
                ),
              ],
            ),
            CircleAvatar(
              backgroundColor: getCircleColor(bmi),
              radius: 80,
              child: Text(
                bmi.toStringAsFixed(1),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                  color: getBmiColor(bmi),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                _Result(
                  condition: 'Underweight',
                  bmi: '< 18.5',
                  isIt: bmi < 18.5,
                  txtcolor: bmi < 18.5 ? Colors.blue : Colors.grey,
                ),
                _Result(
                  condition: 'Normal',
                  bmi: '18.5 - 25',
                  isIt: 18.5 < bmi && bmi < 25,
                  txtcolor:
                      18.5 < bmi && bmi < 25 ? Color(0xFF08D8BF) : Colors.grey,
                ),
                _Result(
                  condition: 'Overweight',
                  bmi: '25 - 30',
                  isIt: 25 < bmi && bmi < 30,
                  txtcolor: 25 < bmi && bmi < 30 ? Colors.yellow : Colors.grey,
                ),
                _Result(
                  condition: 'Obese',
                  bmi: '30 - 35',
                  isIt: 30 < bmi && bmi < 35,
                  txtcolor: 30 < bmi && bmi < 35 ? Colors.orange : Colors.grey,
                ),
                _Result(
                  condition: 'Severely Obese',
                  bmi: '35 - 40',
                  isIt: 35 < bmi && bmi < 40,
                  txtcolor:
                      35 < bmi && bmi < 40 ? Color(0xFFF37B56) : Colors.grey,
                ),
                _Result(
                  condition: 'Very Severely Obese',
                  bmi: '> 40',
                  isIt: bmi > 40,
                  txtcolor: bmi > 40 ? Colors.red : Colors.grey,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Color? getBmiColor(bmi) {
    if (bmi < 18.5) {
      return Colors.blue;
    } else if (18.5 < bmi && bmi < 25) {
      return Color(0xFF08D8BF);
    } else if (25 < bmi && bmi < 30) {
      return Colors.yellow;
    } else if (30 < bmi && bmi < 35) {
      return Colors.orange;
    } else if (35 < bmi && bmi < 40) {
      return Color(0xFFF37B56);
    } else {
      return Colors.red;
    }
  }

  Color? getCircleColor(double bmi) {
    if (bmi < 18.5) {
      return Colors.lightBlue[50];
    } else if (18.5 < bmi && bmi < 25) {
      return Color(0xFFEDFBF9);
    } else if (25 < bmi && bmi < 30) {
      return Colors.yellow[50];
    } else if (30 < bmi && bmi < 35) {
      return Colors.orange[50];
    } else if (35 < bmi && bmi < 40) {
      return Colors.orange[50];
    } else {
      return Colors.red[50];
    }
  }
}

class _Result extends StatelessWidget {
  final String condition;
  final String bmi;
  final bool isIt;
  final Color txtcolor;
  const _Result({
    Key? key,
    required this.condition,
    required this.bmi,
    required this.isIt,
    required this.txtcolor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            condition,
            style: TextStyle(
              fontSize: 19,
              fontWeight: isIt ? FontWeight.bold : FontWeight.w400,
              color: txtcolor,
            ),
          ),
          Text(
            bmi,
            style: TextStyle(
              fontSize: 19,
              color: txtcolor,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
