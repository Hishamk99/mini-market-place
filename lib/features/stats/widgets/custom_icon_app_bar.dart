import 'package:flutter/material.dart';

class CustomIconAppBar extends StatelessWidget {
  const CustomIconAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: 20,
      onPressed: () {},
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          border: Border(
            top: BorderSide(
              color: Colors.white,
            ),
            left: BorderSide(
              color: Colors.white,
            ),
            right: BorderSide(
              color: Colors.white,
            ),
            bottom: BorderSide(
              color: Colors.white,
            ),
          ),
        ),
        child: const Icon(
          Icons.more_horiz_rounded,
          color: Colors.white,
        ),
      ),
    );
  }
}