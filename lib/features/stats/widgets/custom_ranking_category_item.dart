import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/stats/model/stats_model.dart';

class CustomRankingCategoryItem extends StatelessWidget {
  const CustomRankingCategoryItem({
    super.key,
    required this.statsModel,
  });
  final StatsModel statsModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Row(
        children: [
          Text(
            statsModel.id,
            style: Styles.style14W400.copyWith(
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(9),
            child: Image.asset(
              statsModel.image,
              width: 39.6,
              height: 39.6,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(width: 13.5),
          Column(
            children: [
              Text(
                statsModel.title,
                style: Styles.style12W600.copyWith(
                  fontSize: 15.3,
                ),
              ),
              Text(
                statsModel.subTitle,
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
                    statsModel.count,
                    style: Styles.style13.copyWith(
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
              Text(
                '${statsModel.percent}%',
                style: Styles.style12.copyWith(
                  color: double.parse(statsModel.percent) > 0
                      ? Colors.green
                      : Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
