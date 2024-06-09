import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/stats/model/stats_model.dart';

class CustomRankingCategoryItem extends StatelessWidget {
  const CustomRankingCategoryItem({
    super.key, required this.statsModel,
  });
  final StatsModel statsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Text(
            '1',
            style: Styles.style14W400.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              'assets/images/music.jpg',
              width: 39.6,
              height: 39.6,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 13.5),
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
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  Image.asset(
                    'assets/images/path1599.png',
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 6),
                  Text(
                    '200055.02',
                    style: Styles.style13.copyWith(
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
              Text(
                '3.99%',
                style: Styles.style12.copyWith(
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
