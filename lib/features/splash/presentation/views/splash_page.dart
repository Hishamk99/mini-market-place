import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/asset_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Image.asset(
              Images.kSplashImage,
              height: double.infinity,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    StringsManager.kWelcome,
                    textAlign: TextAlign.center,
                    style: Stylse.style36,
                  ),
                  Text(
                    StringsManager.kNFT,
                    textAlign: TextAlign.center,
                    style: Stylse.style36,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
