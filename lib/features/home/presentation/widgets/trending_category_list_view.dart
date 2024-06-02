
import 'package:flutter/material.dart';

import 'trending_category.dart';

class TrendingCategoryListView extends StatelessWidget {
  const TrendingCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 194.9,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4),
            child: TrendingCategory(),
          );
        },
      ),
    );
  }
}
