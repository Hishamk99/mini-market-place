import 'dart:ui';

import 'package:flutter/material.dart';

import 'custom_ranking_list_view.dart';

class RankingBox extends StatelessWidget {
  const RankingBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 16),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(9),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 10,
            sigmaY: 10,
          ),
          child: Container(
            width: double.infinity,
            color: Colors.white.withOpacity(.1),
            child: const CustomRankingListView(),
          ),
        ),
      ),
    );
  }
}
