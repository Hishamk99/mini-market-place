import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/stats/model/stats_model.dart';

import 'custom_ranking_category_item.dart';

class CustomRankingListView extends StatelessWidget {
  const CustomRankingListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<StatsModel> statsList = [
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Azumi',
        subTitle: 'view info',
        id: '1',
        count: '20055.20',
        percent: '15',
      ),
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Hape Prime',
        subTitle: 'view info',
        id: '2',
        count: '200788.20',
        percent: '-55',
      ),
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Bat',
        subTitle: 'view info',
        id: '3',
        count: '10055.06',
        percent: '3.99',
      ),
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Cryoto',
        subTitle: 'view info',
        id: '4',
        count: '90055.62',
        percent: '-6.55',
      ),
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Mutant',
        subTitle: 'view info',
        id: '5',
        count: '9095.27',
        percent: '3.55',
      ),
      StatsModel(
        image: 'assets/images/Shape.png',
        title: 'Ape Club',
        subTitle: 'view info',
        id: '6',
        count: '88055.27',
        percent: '3.99',
      ),
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: statsList.length,
      itemBuilder: (context, index) {
        return CustomRankingCategoryItem(
          statsModel: statsList[index],
        );
      },
    );
  }
}
