import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mini_nft_marketplace_app/features/home/model/category_model.dart';

import 'category_item.dart';

class CategoryImage extends StatelessWidget {
  const CategoryImage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CategoryModel> categoryList = [
      CategoryModel(title: 'Art', image: 'assets/images/art.png'),
      CategoryModel(title: 'Music', image: 'assets/images/music.jpg'),
      CategoryModel(
          title: 'Virtual Worlds', image: 'assets/images/virtual_worlds.png'),
    ];
    return SizedBox(
      height: 167.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.5),
            child: CategoryImageItem(
              categoryModel: categoryList[index],
            ),
          );
        },
      ),
    );
  }
}
