import 'package:flutter/material.dart';

class BMIWeightChanger extends StatelessWidget {
  final double weight;
  final void Function(int weight) onWeightChanged;
  const BMIWeightChanger({
    Key? key,
    required this.weight,
    required this.onWeightChanged,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'WEIGHT (Kg)',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              height: 0.1,
              width: double.infinity,
              color: Colors.black,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(8, 28, 8, 0),
                child: Column(
                  children: <Widget>[
                    Text(
                      weight.round().toString(),
                      style: TextStyle(
                        fontSize: 30.0,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () => onWeightChanged(weight.round() - 1),
                          child: CircleAvatar(
                            child: Icon(Icons.remove),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        GestureDetector(
                          child: CircleAvatar(
                            child: Icon(Icons.add),
                          ),
                          onTap: () => onWeightChanged(weight.round() + 1),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
