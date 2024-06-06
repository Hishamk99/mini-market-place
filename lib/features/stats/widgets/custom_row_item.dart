import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class CustomRowItem extends StatelessWidget {
  const CustomRowItem({
    super.key,
    required this.title,
    required this.icon,
    required this.color,
    required this.onTap,
  });
  final String title;
  final IconData icon;
  final Color color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 110,
        decoration: BoxDecoration(
          
          border: Border(
            bottom: BorderSide(
              color: color,
              style: BorderStyle.solid,
              width: 5,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Icon(
                icon,
                color: Colors.grey,
              ),
            ),
            const SizedBox(
              width: 7,
            ),
            Text(
              title,
              style: Styles.style15,
            ),
          ],
        ),
      ),
    );
  }
}
