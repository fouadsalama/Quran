import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/styles.dart';

import 'widgets/custom_app_bar_ico.dart';
import 'widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Quran',
            style: Styles.textStyle20,
          ),
        ),
        leading: IconButton(
          icon: const CustomAppBarIcons(
            image: 'assets/images/menu.png',
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const CustomAppBarIcons(
              image: 'assets/images/search.png',
            ),
            onPressed: () {},
          )
        ],
      ),
      body: const HomeViewBody(),
    );
  }
}
