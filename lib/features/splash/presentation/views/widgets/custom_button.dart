import 'dart:ui';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: ClipRRect(
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              //backgroundColor: Colors.white.withOpacity(.1),
              backgroundColor: const Color(0xff97a9f6).withOpacity(.5),
              side: const BorderSide(
                color: Colors.white,
              ),
            ),
            onPressed: onPressed,
            child: const Text(
              'Get started now',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
