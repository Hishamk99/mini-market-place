import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_all_category.dart';
import 'package:mini_nft_marketplace_app/features/stats/widgets/custom_ranking_and_activity.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});
  static String id = 'StatePage';
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRankingAndActivity(),
        CustomAllCategory(),
      ],
    );
  }
}
