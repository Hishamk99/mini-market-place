import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          appBar: AppBar(
            title: Text(
              StringsManager.kTitleHomePage,
              style: Styles.style25,
            ),
            centerTitle: true,
            backgroundColor: kPrimaryColor,
          ),
          body: const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.6),
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
}
