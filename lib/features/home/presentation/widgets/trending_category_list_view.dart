import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/home/model/trending_collection_model.dart';

import 'trending_category.dart';

class TrendingCategoryListView extends StatelessWidget {
  const TrendingCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<TrendingCollectionModel> trendingCollectionList = [
      TrendingCollectionModel(
        count: '200',
        active: true,
        image: 'assets/images/trending1.png',
        title: '3D Art',
      ),
      TrendingCollectionModel(
        count: '500',
        active: false,
        image: 'assets/images/trending2.png',
        title: 'Abstract Art',
      ),
      TrendingCollectionModel(
        count: '100',
        active: true,
        image: 'assets/images/trending3.png',
        title: 'Portrait Art',
      ),
      TrendingCollectionModel(
        count: '300',
        active: false,
        image: 'assets/images/trending4.png',
        title: 'Portrait Art',
      ),
    ];
    return SizedBox(
      height: 194.9,
      child: ListView.builder(
        itemCount: trendingCollectionList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: TrendingCategory(
              trendingCollectionModel: trendingCollectionList[index],
            ),
          );
        },
      ),
    );
  }
}
