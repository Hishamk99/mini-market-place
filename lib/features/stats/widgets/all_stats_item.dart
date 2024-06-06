import 'package:flutter/material.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class AllStatsItem extends StatelessWidget {
  const AllStatsItem({
    super.key,
    required this.title,
    required this.icon,
    this.size = 25,
  });
  final String title;
  final IconData icon;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 44,
          width: 164,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color(0xff956aff).withOpacity(.1),
            border: Border.all(
              color: const Color(0xff956aff),
            ),
            borderRadius: BorderRadius.circular(30),
          ),
          child: SizedBox(
            width: 131,
            height: 21,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(
                  Icons.border_all_rounded,
                  color: Colors.grey,
                  size: 18,
                ),
                Text(
                  title,
                  style: Styles.style14W400,
                ),
                Expanded(
                  child: IconButton(
                    padding: EdgeInsets.zero,
                    onPressed: () {},
                    icon: Icon(
                      icon,
                      color: Colors.grey,
                      size: size,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
