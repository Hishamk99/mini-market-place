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
  List<Widget> widgetList = [const HomeBody(), const StatsPage()];
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: CustomBottomNavigationBar(
          onPressedStats: () {
            index = 1;
            setState(() {});
          },
          onPressedHome: () {
            index = 0;
            setState(() {});
          },
        ),
        backgroundColor: kPrimaryColor,
        appBar: AppBar(
          title: Text(
            index == 0 ? StringsManager.kTitleHomePage : 'Stats',
            style: Styles.style25,
          ),
          centerTitle: true,
          backgroundColor: Colors.transparent,
          actions: index == 0 ? null : const [],
        ),
        body: widgetList[index],
      ),
    );
  }
}
