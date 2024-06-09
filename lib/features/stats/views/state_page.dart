import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_all_category.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_ranking_and_activity.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_ranking_category_item.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});
  static String id = 'StatePage';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomRankingAndActivity(),
        CustomAllCategory(),
        RankingBox(),
      ],
    );
  }
}

class RankingBox extends StatelessWidget {
  const RankingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            width: double.infinity,
            height: 340,
            color: Colors.white.withOpacity(.1),
            child: const CustomRankingListView(),
          ),
        ),
      ),
    );
  }
}

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
