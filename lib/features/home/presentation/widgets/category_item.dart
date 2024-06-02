import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/model/category_model.dart';

class CategoryImageItem extends StatelessWidget {
  const CategoryImageItem({
    super.key, required this.categoryModel,
  });
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 167.5,
      width: 252,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(27),
            child: Image.asset(
             categoryModel.image,
              width: 252,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            left: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(27),
                bottomRight: Radius.circular(27),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 1, sigmaY: 3),
                child: Container(
                  width: 252,
                  height: 54,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xff000000).withOpacity(0),
                        const Color(0xff000000).withOpacity(.45),
                      ],
                    ),
                  ),
                  child: Text(
                    categoryModel.title,
                    textAlign: TextAlign.center,
                    style: Styles.style20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
