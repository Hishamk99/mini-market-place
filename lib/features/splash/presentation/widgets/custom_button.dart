import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

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
            child: Text(
              'Get started now',
              style: Styles.style18,
            ),
          ),
        ),
      ),
    );
  }
}
