import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mini_nft_marketplace_app/core/resources/styles.dart';

class StatsPage extends StatelessWidget {
  const StatsPage({super.key});
  static String id = 'StatePage';
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomRankingAndActivity(),
      ],
    );
  }
}

class CustomRankingAndActivity extends StatelessWidget {
  const CustomRankingAndActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 5,
                ),
              ),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    Icons.stacked_bar_chart_rounded,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  'Ranking',
                  style: Styles.style15,
                ),
              ],
            ),
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.white,
                  style: BorderStyle.solid,
                  width: 5,
                ),
              ),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Icon(
                    FontAwesomeIcons.chartLine,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  'Activity',
                  style: Styles.style15,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
