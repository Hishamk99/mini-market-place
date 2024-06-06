import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'all_stats_item.dart';

class CustomAllCategory extends StatelessWidget {
  const CustomAllCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AllStatsItem(
          title: 'All categories',
          icon: Icons.arrow_drop_down_outlined,
        ),
        AllStatsItem(
          title: 'All categories',
          icon: FontAwesomeIcons.link,
          size: 15,
        ),
      ],
    );
  }
}
