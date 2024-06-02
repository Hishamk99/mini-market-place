import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_home_title.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 12.6),
            child: Column(
              children: [
                CustomHomeTitle(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
