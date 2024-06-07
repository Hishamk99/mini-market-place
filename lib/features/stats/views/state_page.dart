import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
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
        CustomRankingCategoryItem()
      ],
    );
  }
}

class CustomRankingCategoryItem extends StatelessWidget {
  const CustomRankingCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '1',
            style: Styles.style14W400,
          ),
          const SizedBox(width: 6),
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              'assets/images/music.jpg',
              width: 39.6,
              height: 39.6,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 12),
          Column(
            children: [
              Text(
                'Azumi',
                style: Styles.style12W600.copyWith(
                  fontSize: 15.3,
                ),
              ),
              Text(
                'view info',
                style: Styles.style12.copyWith(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          const SizedBox(width: 100),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image.asset('assets/images/path1599.png'),
                  const SizedBox(width: 6),
                  Text(
                    '200055.02',
                    style: Styles.style13.copyWith(
                      fontSize: 13.5,
                    ),
                  )
                ],
              ),
              Text(
                '3.99%',
                style: Styles.style12.copyWith(
                  color: Colors.green,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
