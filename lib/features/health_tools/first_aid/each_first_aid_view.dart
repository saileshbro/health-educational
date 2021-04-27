import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import 'package:health_educational/datamodels/models/first_aid/first_aid.dart';

class EachFirstAidView extends StatelessWidget {
  final FirstAid firstAid;
  const EachFirstAidView({Key? key, required this.firstAid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 200.0,
            floating: false,
            pinned: true,
            centerTitle: true,
            title: Text(
              firstAid.title,
              style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
                    fontSize: 20,
                    color: Colors.transparent,
                    fontWeight: FontWeight.w500,
                  ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                imageUrl: firstAid.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Html(
                    data: firstAid.body,
                    style: {
                      "b": Style(
                        color: Colors.blue,
                      ),
                      "code": Style(
                        color: Colors.red[700],
                        fontSize: FontSize(18),
                        fontWeight: FontWeight.w500,
                      )
                    },
                  ),
                );
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
