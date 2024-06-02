import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class CustomHomeTitle extends StatelessWidget {
  const CustomHomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      StringsManager.kTitleHomePage,
      style: Styles.style25,
    );
  }
}
