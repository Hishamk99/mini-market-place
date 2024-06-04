import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/features/home/presentation/views/home_page.dart';
import 'package:mini_nft_marketplace_app/features/splash/presentation/views/splash_page.dart';

class RouteManager {
  static Map<String, WidgetBuilder> routes = {
    SplashPage.id: (context) => const SplashPage(),
    HomePage.id: (context) => const HomePage(),

  };
}
