import 'package:flutter/material.dart';
import 'navigation_bar_add_item.dart';
import 'navigation_bar_items.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 122.5,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavigationBarItems(),
          ),
          Positioned(
            bottom: 45,
            child: NavigationBarAddItem(),
          ),
        ],
      ),
    );
  }
}
