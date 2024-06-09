import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/stats/model/stats_model.dart';

import 'custom_ranking_category_item.dart';

class CustomRankingListView extends StatelessWidget {
  const CustomRankingListView({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    List<StatsModel> statsList = [];
    return ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: statsList.length,
      itemBuilder: (context, index) {
        return CustomRankingCategoryItem(statsModel: statsList[index],);
      },
    );
  }
}
