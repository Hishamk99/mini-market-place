import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/strings_manager.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});
  static String id = 'SplashPage';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xff5C609B),
                Color(0xff767CB2),
                Color(0xffB6BDD0),
                //  Color(0xffAEB4CA),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                StringsManager.kWelcome,
                textAlign: TextAlign.start,
                style: Stylse.style36,
              ),
              Text(
                StringsManager.kNFT,
                style: Stylse.style36,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
