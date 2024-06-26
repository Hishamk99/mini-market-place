import 'package:flutter/material.dart';
import 'navigation_bar_add_item.dart';
import 'navigation_bar_items.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
    required this.onPressedStats,
    required this.onPressedHome,
  });
  final void Function()? onPressedStats;
  final void Function()? onPressedHome;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 122.5,
      child: Stack(
        alignment: Alignment.center,
        clipBehavior: Clip.none,
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: NavigationBarItems(
              onPressedStats: onPressedStats,
              onPressedHome: onPressedHome,
            ),
          ),
          const Positioned(
            bottom: 45,
            child: NavigationBarAddItem(),
          ),
        ],
      ),
    );
  }
}
