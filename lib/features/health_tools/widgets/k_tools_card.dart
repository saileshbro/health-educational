import 'package:flutter/material.dart';

class KToolCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final void Function()? onPressed;
  const KToolCard({
    Key? key,
    required this.imageUrl,
    required this.name,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 20),
              child: Image.asset(
                imageUrl,
                height: 90,
                width: 90,
                fit: BoxFit.contain,
              ),
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyText1?.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
