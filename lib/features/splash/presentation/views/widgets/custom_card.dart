import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(27),
      child: Container(
        color: Colors.red,
        width: double.infinity,
        height: 200,
        child: Column(
          children: [
            Text(
              StringsManager.kTextSplashCard,
              style: Styles.style20,
            ),
          ],
        ),
      ),
    );
  }
}
