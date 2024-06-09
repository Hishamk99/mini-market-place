import 'package:flutter/material.dart';

import 'custom_ranking_category_item.dart';

class CustomRankingListView extends StatelessWidget {
  const CustomRankingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return const CustomRankingCategoryItem();
      },
    );
  }
}