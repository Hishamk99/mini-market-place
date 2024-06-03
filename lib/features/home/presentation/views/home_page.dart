import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/category_image.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_trending_collection_text.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_top_seller_text.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/trending_category_list_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: AppBar(
            title: Text(
              StringsManager.kTitleHomePage,
              style: Styles.style25,
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 14),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CategoryImage(),
                  SizedBox(height: 27),
                  CustomTrendingCollectionText(),
                  SizedBox(height: 16),
                  TrendingCategoryListView(),
                  SizedBox(height: 27),
                  CustomTopSellerText(),
                  SizedBox(height: 7),
                  TopSellerCategoryItem(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TopSellerCategoryItem extends StatelessWidget {
  const TopSellerCategoryItem({
    super.key,
  });

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
                  'assets/images/topSeller1.png',
                  width: 139.6,
                  height: 139.6,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    'Abstract Pink',
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
                    'abstract #2384',
                    style: Styles.style12W600.copyWith(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
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
                        const Icon(
                          Icons.favorite,
                          color: Colors.red,
                          size: 16,
                        ),
                        const SizedBox(width: 5),
                        Text(
                          '200',
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
