import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';
import 'package:health_educational/datamodels/models/symptom/symptom.dart';
import 'package:stacked_services/stacked_services.dart';

class KSymptomCard extends StatelessWidget {
  final Symptom symptom;
  final bool extended;

  const KSymptomCard({Key? key, required this.symptom, this.extended = false})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => locator<NavigationService>().navigateTo(
        Routes.eachSymptomView,
        arguments: EachSymptomViewArguments(symptom: symptom),
      ),
      child: extended
          ? Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: Container(
                        child: CachedNetworkImage(
                          imageUrl: symptom.imageUrl,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      flex: 6,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            symptom.symptom,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.start,
                            maxLines: 3,
                            style:
                                Theme.of(context).textTheme.bodyText1?.copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red[700],
                                    ),
                          ),
                          Text(symptom.description,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.justify,
                              maxLines: 5,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2
                                  ?.copyWith(fontSize: 14)),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          : ClipRRect(
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
                          gradient: LinearGradient(
                              colors: [
                                Colors.red.withOpacity(0.35),
                                Colors.red.withOpacity(0.25),
                                Colors.red.withOpacity(0)
                              ],
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 10, right: 10, bottom: 6),
                        color: Colors.white60,
                        child: Text(
                          symptom.symptom,
                          style:
                              Theme.of(context).textTheme.subtitle1?.copyWith(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
