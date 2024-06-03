import 'dart:ui';

import 'package:flutter/material.dart';
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
            ),
          ),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: (value) {
        //     index = value;
        //     setState(() {});
        //   },
        //   currentIndex: index,
        //   selectedItemColor: Colors.red,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home),
        //       label: 'home',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.search),
        //       label: 'search',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person),
        //       label: 'person',
        //     )
        //   ],
        // ),
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
