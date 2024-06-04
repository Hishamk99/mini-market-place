// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';

class CustomTopSellerText extends StatelessWidget {
  const CustomTopSellerText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          StringsManager.kTopSeller,
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'SF Pro Display',
          ),
        ),
      ],
    );
  }
}
