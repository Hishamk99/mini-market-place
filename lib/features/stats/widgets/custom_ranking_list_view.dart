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
      physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const CustomRankingCategoryItem();
      },
    );
  }
}
