import 'package:flutter/material.dart';

import '../../../../../core/utils/app_assets.dart';

class SplashImageSection extends StatelessWidget {
  const SplashImageSection({
    super.key,
    required this.sliderAnimation,
  });
  final Animation<Offset> sliderAnimation;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(
        left: 26,
        right: 26,
        top: 122,
      ),
      child: Container(
        height: height * 0.5,
        decoration: BoxDecoration(
            color: const Color(0xff186351),
            borderRadius: BorderRadius.circular(18)),
        child: Stack(
          children: [
            AnimatedBuilder(
                animation: sliderAnimation,
                builder: (context, _) {
                  return SlideTransition(
                      position: sliderAnimation,
                      child: Center(child: Image.asset(AppAssets.logo)));
                }),
            Positioned(
              top: height * 0.3,
              left: 9,
              child: Image.asset(AppAssets.star),
            ),
            Positioned(
              left: width * 0.7,
              top: 40,
              child: SizedBox(
                height: 19,
                child: Image.asset(AppAssets.star),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
