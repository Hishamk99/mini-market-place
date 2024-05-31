import 'package:flutter/material.dart';

import 'core/resources/route_manager.dart';
import 'features/splash/presentation/views/splash_page.dart';

void main() {
  runApp(const MiniMarketPlaceApp());
}

class MiniMarketPlaceApp extends StatelessWidget {
  const MiniMarketPlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: RouteManager.routes,
      initialRoute: SplashPage.id,
    );
  }
}
