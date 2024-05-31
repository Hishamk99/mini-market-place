import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/asset_manager.dart';

class CustomSplashImage extends StatelessWidget {
  const CustomSplashImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      Images.kSplashImage,
      height: double.infinity,
      width: double.infinity,
      fit: BoxFit.cover,
    );
  }
}