import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/category_image.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_trending_collection_text.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_top_seller_text.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/top_seller_category_list_view.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/trending_category_list_view.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(50),
            topRight: Radius.circular(50),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 10,
              sigmaY: 10,
            ),
            child: Container(
              color: Colors.white.withOpacity(.1),
              height: 90,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.home,
                    size: 39,
                    color: Colors.white,
                  ),
                  Icon(
                    FontAwesomeIcons.chartSimple,
                    size: 39,
                    color: Colors.white,
                  ),
                  SizedBox(width: 39),
                  Icon(
                    Icons.search,
                    size: 39,
                    color: Colors.white,
                  ),
                  Icon(
                    Icons.person,
                    size: 39,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
        ),
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
                TopSellerCategoryListViews(),
                SizedBox(height: 100),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
