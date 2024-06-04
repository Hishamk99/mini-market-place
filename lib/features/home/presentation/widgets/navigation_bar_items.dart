import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({
    super.key,
    required this.onPressedStats,
    required this.onPressedHome,
  });
  final void Function()? onPressedStats;
  final void Function()? onPressedHome;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(50),
        topRight: Radius.circular(50),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: 10,
          sigmaY: 10,
        ),
        child: Container(
          color: Colors.white.withOpacity(.1),
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: onPressedHome,
                icon: const Icon(
                  Icons.home,
                  size: 39,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: onPressedStats,
                icon: const Icon(
                  FontAwesomeIcons.chartSimple,
                  size: 39,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 39),
              const Icon(
                Icons.search,
                size: 39,
                color: Colors.white,
              ),
              const Icon(
                Icons.person_2_outlined,
                size: 39,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
