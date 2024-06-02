import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'category_item.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.5),
            child: CategoryImageItem(),
          );
        },
      ),
    );
  }
}
