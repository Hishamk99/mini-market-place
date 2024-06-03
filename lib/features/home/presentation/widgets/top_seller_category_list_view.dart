import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/home/model/top_seller_model.dart';
import 'top_seller_category_item.dart';

class TopSellerCategoryListViews extends StatelessWidget {
  const TopSellerCategoryListViews({super.key});

  @override
  Widget build(BuildContext context) {
    List<TopSellerModel> topSellerList = [
      TopSellerModel(
        image: 'assets/images/topSeller1.png',
        title: 'Abstarct Pink',
        subTitle: 'abstarct #2538',
        active: true,
        count: 200,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller2.png',
        title: 'Wave',
        subTitle: 'wave2 #5672',
        active: false,
        count: 100,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller3.png',
        title: 'Wave',
        subTitle: 'wavepi #8765',
        active: true,
        count: 300,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller4.png',
        title: 'Ring',
        subTitle: 'Ring #7288',
        active: true,
        count: 500,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller5.png',
        title: 'Ball',
        subTitle: 'baalli #4890',
        active: false,
        count: 900,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller6.png',
        title: 'Beer',
        subTitle: 'Beer #1238',
        active: true,
        count: 300,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller7.png',
        title: 'Music',
        subTitle: 'Mali #8790',
        active: true,
        count: 300,
      ),
      TopSellerModel(
        image: 'assets/images/topSeller8.png',
        title: 'Abstract23',
        subTitle: 'abstract #2038',
        active: false,
        count: 300,
      ),
    ];
    return SizedBox(
      height: 236,
      child: ListView.builder(
        itemCount: topSellerList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: TopSellerCategoryItem(
              topSellerModel: topSellerList[index],
            ),
          );
        },
      ),
    );
  }
}
