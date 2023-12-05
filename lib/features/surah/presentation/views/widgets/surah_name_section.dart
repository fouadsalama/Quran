import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_assets.dart';
import 'custom_box_details.dart';
import 'custom_shadow.dart';

class SurahNameSection extends StatelessWidget {
  const SurahNameSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 146,
          width: double.infinity,
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
              opacity: 0.1,
              scale: 2.8,
              alignment: FractionalOffset(1, 1.7),
              image: AssetImage(
                AppAssets.logo,
              ),
            ),
          ),
          child: const CustomBoxDetails(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 47),
          child: IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
        const CustomShadow(),
      ],
    );
  }
}
