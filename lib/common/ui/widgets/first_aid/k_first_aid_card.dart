import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:health_educational/app/app.locator.dart';
import 'package:health_educational/app/app.router.dart';

import 'package:health_educational/datamodels/models/first_aid/first_aid.dart';
import 'package:stacked_services/stacked_services.dart';

class KFirstAidCard extends StatelessWidget {
  final FirstAid firstAid;
  const KFirstAidCard({Key? key, required this.firstAid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => locator<NavigationService>().navigateTo(
        Routes.eachFirstAidView,
        arguments: EachFirstAidViewArguments(firstAid: firstAid),
      ),
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: CachedNetworkImageProvider(firstAid.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment(0.0, 0.0),
                  color: Colors.red[700],
                  height: 40,
                  child: Text(
                    firstAid.title.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
