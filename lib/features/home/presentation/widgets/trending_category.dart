import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/model/trending_collection_model.dart';

class TrendingCategory extends StatelessWidget {
  const TrendingCategory({super.key, required this.trendingCollectionModel});
  final TrendingCollectionModel trendingCollectionModel;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          color: Colors.white.withOpacity(.1),
          width: 157.6,
          height: 194.9,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Image.asset(
                  trendingCollectionModel.image,
                  width: 139.6,
                  height: 139.6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      trendingCollectionModel.title,
                      style: Styles.style12W600,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: trendingCollectionModel.active
                              ? Colors.red
                              : Colors.black,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          trendingCollectionModel.count,
                          style: Styles.style12,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
