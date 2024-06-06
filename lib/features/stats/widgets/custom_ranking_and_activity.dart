import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_row_item.dart';

class CustomRankingAndActivity extends StatefulWidget {
  const CustomRankingAndActivity({
    super.key,
  });

  @override
  State<CustomRankingAndActivity> createState() =>
      _CustomRankingAndActivityState();
}

class _CustomRankingAndActivityState extends State<CustomRankingAndActivity> {
  Color? colorLeft;
  Color? colorRight;
  @override
  void initState() {
    colorLeft = const Color(0xff956aff);
    colorRight = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Colors.grey,
            style: BorderStyle.solid,
            width: .2,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomRowItem(
            title: 'Ranking',
            icon: Icons.stacked_bar_chart_rounded,
            color: colorLeft ?? Colors.white,
            onTap: () {
              setState(() {
                colorLeft = const Color(0xff956aff);
                colorRight = Colors.transparent;
              });
            },
          ),
          CustomRowItem(
            title: 'Activity',
            icon: FontAwesomeIcons.chartLine,
            color: colorRight ?? Colors.white,
            onTap: () {
              setState(() {
                colorRight = const Color(0xff956aff);
                colorLeft = Colors.transparent;
              });
            },
          ),
        ],
      ),
    );
  }
}

