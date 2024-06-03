import 'package:flutter/material.dart';
import 'top_seller_category_item.dart';

class TopSellerCategoryListViews extends StatelessWidget {
  const TopSellerCategoryListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 236,
      child: ListView.builder(
        itemCount: 3,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: TopSellerCategoryItem(),
          );
        },
      ),
    );
  }
}