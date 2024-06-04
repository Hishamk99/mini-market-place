import 'package:flutter/material.dart';
import 'category_image.dart';
import 'custom_top_seller_text.dart';
import 'custom_trending_collection_text.dart';
import 'top_seller_category_list_view.dart';
import 'trending_category_list_view.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
            SizedBox(height: 110),
          ],
        ),
      ),
    );
  }
}
