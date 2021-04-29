import 'package:flutter/material.dart';

import 'package:health_educational/features/health_tools/bmi/gender_enum.dart';

class BMIGenderSelector extends StatelessWidget {
  final Gender? gender;
  final void Function(Gender gender) onGenderChanged;
  const BMIGenderSelector({
    Key? key,
    this.gender,
    required this.onGenderChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                'GENDER',
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
              Padding(
                padding: EdgeInsets.only(top: 46),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () => onGenderChanged(Gender.male),
                      child: Image.asset(
                        'assets/images/icons/male.png',
                        color: gender == Gender.male
                            ? Color(0XFF2B86D3)
                            : Color(0xFF8BB8E1),
                        height: gender == Gender.male ? 100 : 60,
                      ),
                    ),
                    Text(
                      'or',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => onGenderChanged(Gender.female),
                      child: Image.asset(
                        'assets/images/icons/female.png',
                        fit: BoxFit.fill,
                        color: gender == Gender.female
                            ? Color(0XFFF2669C)
                            : Color(0xFFF3AFD7),
                        height: gender == Gender.female ? 100 : 60,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
