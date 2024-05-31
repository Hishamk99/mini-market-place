import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

import 'custom_card.dart';

class CustomSplashComponents extends StatelessWidget {
  const CustomSplashComponents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            StringsManager.kWelcome,
            textAlign: TextAlign.center,
            style: Styles.style36,
          ),
          Text(
            StringsManager.kNFT,
            textAlign: TextAlign.center,
            style: Styles.style36,
          ),
          const Spacer(),
          const CustomCard(),
        ],
      ),
    );
  }
}