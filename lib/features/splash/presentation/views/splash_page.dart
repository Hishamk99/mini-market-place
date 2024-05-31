import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/splash/presentation/widgets/custom_splash_components.dart';
import 'package:mini_nft_marketplace_app/features/splash/presentation/widgets/custom_splash_image.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            CustomSplashImage(),
            CustomSplashComponents(),
          ],
        ),
      ),
    );
  }
}
