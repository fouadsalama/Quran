import 'package:flutter/material.dart';
import 'widgets/home_view_body.dart';
import 'widgets/menu_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          // Container(
          //   decoration: const BoxDecoration(
          //     image: DecorationImage(
          //       fit: BoxFit.fill,
          //       image: AssetImage("assets/images/background.png"),
          //     ),
          //   ),
          // ),
          HomeViewBody(),
        ],
      ),
      drawer: MenuDrawer(),
    );
  }
}
