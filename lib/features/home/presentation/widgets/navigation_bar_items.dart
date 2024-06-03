import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavigationBarItems extends StatelessWidget {
  const NavigationBarItems({
    super.key,
  });

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
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.home,
                size: 39,
                color: Colors.white,
              ),
              Icon(
                FontAwesomeIcons.chartSimple,
                size: 39,
                color: Colors.white,
              ),
              SizedBox(width: 39),
              Icon(
                Icons.search,
                size: 39,
                color: Colors.white,
              ),
              Icon(
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
