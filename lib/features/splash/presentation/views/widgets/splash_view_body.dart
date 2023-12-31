import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/data/manger/surah_name_cubit/surah_name_cubit.dart';
import 'package:islamic_app/core/utils/app_routes.dart';
import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/functions/shared_preferences_methods.dart';

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
    loadLastReadSurah();

    navigateToHome();

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedBuilder(
            animation: offsetAnimation,
            builder: (context, _) {
              return SlideTransition(
                position: offsetAnimation,
                child: Image.asset(
                  AppAssets.logo,
                ),
              );
            }),
      ],
    );
  }

  void initialSlideAnimation() {
    animationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    offsetAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: Offset.zero,
    ).animate(animationController);
    animationController.fling();
  }

  void navigateToHome() {
    BlocProvider.of<SurahNameCubit>(context).fetchSurahName().then(
          (value) => GoRouter.of(context).pushReplacement(
            AppRouter.kHomeView,
          ),
        );
  }
}
