import 'package:flutter/material.dart';
import 'package:islamic_app/Features/surah/presentation/views/widgets/custom_shadow.dart';
import 'package:islamic_app/core/utils/app_assets.dart';
import 'custom_last_read_details.dart';

class LastReadQuran extends StatelessWidget {
  const LastReadQuran({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: 170,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xff006754),
                Color(0xff61B48E),
                Color(0xff87D1A4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(23),
          ),
          child: const Stack(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 27,
                  top: 26,
                ),
                child: CustomLastReadDetails(),
              ),
              CustomShadow()
            ],
          ),
        ),
        // Padding(
        //   padding: const EdgeInsets.only(top: 86),
        //   child: CustomShadow(),
        // ),
        Positioned(
          left: MediaQuery.of(context).size.width * 0.5,
          top: 47,
          right: 5,
          child: SizedBox(
            width: 132.62,
            height: 117.46,
            child: Image.asset(
              AppAssets.logo,
              scale: 2.5,
            ),
          ),
        ),
      ],
    );
  }
}
