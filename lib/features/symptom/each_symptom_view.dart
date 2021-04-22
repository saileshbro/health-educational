import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import 'package:health_educational/datamodels/models/symptom/symptom.dart';

class EachSymptomView extends StatefulWidget {
  final Symptom symptom;
  const EachSymptomView({
    Key? key,
    required this.symptom,
  }) : super(key: key);

  @override
  _EachSymptomViewState createState() => _EachSymptomViewState();
}

class _EachSymptomViewState extends State<EachSymptomView> {
  late ScrollController _customController;
  bool _isCollapsed = false;

  @override
  void initState() {
    super.initState();
    _customController = ScrollController()
      ..addListener(
        () => setState(
          () {
            _isCollapsed =
                (_customController.offset <= kToolbarHeight) ? false : true;
          },
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        controller: _customController,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              centerTitle: true,
              title: _isCollapsed
                  ? Text(
                      widget.symptom.symptom,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w500,
                          ),
                    )
                  : Text(
                      widget.symptom.symptom,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.transparent,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
              flexibleSpace: FlexibleSpaceBar(
                background: CachedNetworkImage(
                  imageUrl: widget.symptom.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Html(
              data: widget.symptom.body,
              style: {
                "b": Style(color: Colors.blue),
                "code": Style(
                  color: Colors.red[700],
                  fontSize: FontSize(18),
                  fontWeight: FontWeight.w500,
                )
              },
            ),
          ),
        ),
      ),
    );
  }
}
