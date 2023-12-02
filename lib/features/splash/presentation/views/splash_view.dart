import 'package:flutter/material.dart';
import 'package:islamic_app/constants.dart';

import 'widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kSplashBackgroundColor,
      body: SplashViewBody(),
    );
  }
}
