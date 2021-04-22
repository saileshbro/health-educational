import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';
import 'package:health_educational/datamodels/models/new/new.dart';

class EachNewView extends StatefulWidget {
  final New news;
  const EachNewView({
    Key? key,
    required this.news,
  }) : super(key: key);

  @override
  _EachNewViewState createState() => _EachNewViewState();
}

class _EachNewViewState extends State<EachNewView> {
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
                      widget.news.title,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w500,
                          ),
                    )
                  : Text(
                      widget.news.title,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.transparent,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
              flexibleSpace: FlexibleSpaceBar(
                background: CachedNetworkImage(
                  imageUrl: widget.news.imageUrl,
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
              data: widget.news.body,
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
