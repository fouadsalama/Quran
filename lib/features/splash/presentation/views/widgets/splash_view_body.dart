import 'package:flutter/material.dart';

import 'details_splash_view_section.dart';
import 'splash_image_section.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> offsetAnimation;

  @override
  void initState() {
    initialSlideAnimation();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SplashImageSection(
          sliderAnimation: offsetAnimation,
        ),
        const SizedBox(height: 22),
        DetailsSplashViewSection(
          slideAnimation: offsetAnimation,
        ),
      ],
    );
  }

  void initialSlideAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    offsetAnimation = Tween<Offset>(
      begin: const Offset(2, 0),
      end: Offset.zero,
    ).animate(animationController);
    animationController.forward();
  }
}
