import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/model/top_seller_model.dart';

class TopSellerCategoryItem extends StatelessWidget {
  const TopSellerCategoryItem({
    super.key,
    required this.topSellerModel,
  });

  final TopSellerModel topSellerModel;

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
          height: 236,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Image.asset(
                  topSellerModel.image,
                  width: 139.6,
                  height: 139.6,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    topSellerModel.title,
                    style: Styles.style12W600,
                  ),
                ],
              ),
              const SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    topSellerModel.subTitle,
                    style: Styles.style12W600.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/path1599.png',
                          width: 7.5,
                          height: 15,
                          color: Colors.grey,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '.98',
                          style: Styles.style13,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.favorite,
                          color: topSellerModel.active ? Colors.red : null,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          topSellerModel.count.toString(),
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
