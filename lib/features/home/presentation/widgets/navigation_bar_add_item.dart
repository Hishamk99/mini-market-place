import 'package:flutter/material.dart';

class NavigationBarAddItem extends StatelessWidget {
  const NavigationBarAddItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      height: 70,
      decoration: const ShapeDecoration(
        color: Color(0xffF7DFF0),
        shape: StarBorder.polygon(
          pointRounding: .5,
          sides: 6,
        ),
      ),
      child: const Icon(
        Icons.add,
        color: Colors.white,
        size: 35,
      ),
    );
  }
}