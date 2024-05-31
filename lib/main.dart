import 'package:flutter/material.dart';

import 'features/splash/presentation/views/splash_page.dart';

void main() {
  runApp(const MiniMarketPlaceApp());
}

class MiniMarketPlaceApp extends StatelessWidget {
  const MiniMarketPlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        
      },
      home: SplashPage(),
    );
  }
}
