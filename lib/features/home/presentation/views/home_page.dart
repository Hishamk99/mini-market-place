import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/constant.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/custom_bottom_navigation_bar.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/widgets/home_body.dart';
import 'package:mini_nft_marketplace_app/features/stats/views/state_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget body = const HomeBody();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomBottomNavigationBar(
          onPressedStatics: () {
            setState(() {
              body = const StatePage();
            });
          },
          onPressedHome: () {
            setState(() {
              body = const HomeBody();
            });
          },
        ),
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          title: Text(
            StringsManager.kTitleHomePage,
            style: Styles.style25,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
        ),
        body: body,
      ),
    );
  }
}
