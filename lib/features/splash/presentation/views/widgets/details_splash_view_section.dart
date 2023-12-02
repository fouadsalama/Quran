import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class DetailsSplashViewSection extends StatelessWidget {
  const DetailsSplashViewSection({
    super.key,
    required this.slideAnimation,
  });
  final Animation<Offset> slideAnimation;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'Quran ',
          style: Styles.textStyle40,
        ),
        const SizedBox(height: 16),
        AnimatedBuilder(
          animation: slideAnimation,
          builder: (context, _) {
            return SlideTransition(
              position: slideAnimation,
              child: const Text(
                'Learn Quran and\n Recite everyday',
                style: Styles.textStyle24,
              ),
            );
          },
        ),
      ],
    );
  }
}
