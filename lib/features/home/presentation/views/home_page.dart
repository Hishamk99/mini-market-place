import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/category_image.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_trending_collection_text.dart';
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
            child: Column(
              children: [
                CategoryImage(),
                SizedBox(height: 27),
                CustomTrendingCollectionText(),
                SizedBox(height: 16),
                TrendingCategoryListView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
