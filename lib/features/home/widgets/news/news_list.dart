import 'package:flutter/material.dart';

import 'package:health_educational/common/ui/widgets/news/k_new_card.dart';
import 'package:health_educational/datamodels/models/new/new.dart';

class NewsList extends StatelessWidget {
  final List<New> news;
  const NewsList({Key? key, required this.news}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: news
          .map(
            (e) => KNewsCard(news: e),
          )
          .toList(),
    );
  }
}
