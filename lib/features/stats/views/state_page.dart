import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class StatePage extends StatelessWidget {
  const StatePage({super.key});
  static String id = 'StatePage';
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class AppBarStats extends StatelessWidget {
  const AppBarStats({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      title: Text(
        'Stats',
        style: Styles.style20,
      ),
      centerTitle: true,
      actions: const [],
    );
  }
}
