import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:health_educational/datamodels/home/symptom/symptom.dart';

class KSymptomCard extends StatelessWidget {
  final Symptom symptom;

  const KSymptomCard({Key? key, required this.symptom}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: SizedBox(
        width: 140,
        child: Stack(
          children: <Widget>[
            Container(
              child: CachedNetworkImage(
                imageUrl: symptom.imageUrl,
                height: 160,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0.0,
              bottom: 0.0,
              height: 160,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.red.withOpacity(0.35),
                    Colors.red.withOpacity(0.25),
                    Colors.red.withOpacity(0)
                  ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10, bottom: 6),
                color: Colors.white60,
                child: Text(
                  symptom.symptom,
                  style: Theme.of(context).textTheme.subtitle1?.copyWith(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
