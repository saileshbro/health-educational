import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

import 'package:health_educational/datamodels/models/drug/drug.dart';

class EachDrugView extends StatefulWidget {
  final Drug drug;
  const EachDrugView({Key? key, required this.drug}) : super(key: key);

  @override
  _EachDrugViewState createState() => _EachDrugViewState();
}

class _EachDrugViewState extends State<EachDrugView> {
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
              expandedHeight: 230.0,
              floating: false,
              pinned: true,
              centerTitle: true,
              title: _isCollapsed
                  ? Text(
                      widget.drug.brandName,
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.red[700],
                            fontWeight: FontWeight.w500,
                          ),
                    )
                  : Text(
                      '',
                      style: Theme.of(context).textTheme.bodyText1?.copyWith(
                            fontSize: 20,
                            color: Colors.transparent,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
              flexibleSpace: FlexibleSpaceBar(
                  background: CachedNetworkImage(
                imageUrl: widget.drug.imageUrl,
                fit: BoxFit.cover,
              )),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _DrugInfoCard(drug: widget.drug),
              _BuildDrugQuery(
                drug: widget.drug,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _DrugInfoCard extends StatelessWidget {
  final Drug drug;
  const _DrugInfoCard({
    Key? key,
    required this.drug,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(left: 20, right: 10, top: 20, bottom: 0),
      color: Theme.of(context).canvasColor.withOpacity(0.5),
      child: Container(
        child: Column(
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleCard(title: "Brand Name"),
                InfoCard(
                  info: drug.brandName,
                  fontsize: 18.0,
                  color: Colors.red[700]!,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleCard(title: "Generic Name"),
                InfoCard(
                  info: drug.genericName,
                  color: Colors.red[700]!,
                  fontsize: 23.0,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleCard(title: "Dose"),
                InfoCard(
                  info: drug.dose,
                  color: Colors.red[700]!,
                  fontsize: 18.0,
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TitleCard(title: "Summary"),
                InfoCard(
                  info: drug.summary,
                  color: Colors.red[700]!,
                  fontsize: 16.0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class TitleCard extends StatelessWidget {
  final String title;

  const TitleCard({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        "$title:  ",
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
            fontSize: 18, fontWeight: FontWeight.w500, color: Colors.blue[300]),
      ),
    );
  }
}

class InfoCard extends StatelessWidget {
  final String info;
  final Color color;
  final double fontsize;
  const InfoCard({
    required this.info,
    required this.color,
    required this.fontsize,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Container(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Text(
        info,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
        ),
      ),
    ));
  }
}

class _BuildDrugQuery extends StatelessWidget {
  final Drug drug;
  const _BuildDrugQuery({
    required this.drug,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(
          right: 0.03 * width, left: 0.03 * width, bottom: 0.01 * height),
      child: Container(
        child: ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: drug.sections.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (BuildContext context, int index) {
            return _QueryCard(
              sectionInfo: drug.sections[index],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(
              height: 25,
              color: Colors.red[700],
            );
          },
        ),
      ),
    );
  }
}

class _QueryCard extends StatelessWidget {
  final Section sectionInfo;
  const _QueryCard({
    required this.sectionInfo,
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Flexible(
                child: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Text(
                    sectionInfo.title,
                    style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          fontSize: 18,
                          color: Colors.red[700],
                        ),
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Html(data: sectionInfo.content, style: {
            "body": Style(
              fontSize: FontSize(14),
              fontWeight: FontWeight.w500,
            )
          }),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
