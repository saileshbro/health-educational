import 'package:flutter/material.dart';

import 'package:health_educational/datamodels/home/new/new.dart';
import 'package:health_educational/features/home/widgets/news/k_new_card.dart';

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
