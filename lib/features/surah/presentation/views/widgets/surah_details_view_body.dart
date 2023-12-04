import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/app_assets.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 393,
          height: 146,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff006754),
                Color(0xff87D1A4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(AppAssets.shadow),
            ),
          ),
        ),
      ],
    );
  }
}
