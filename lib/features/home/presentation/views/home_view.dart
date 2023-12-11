import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'widgets/home_view_body.dart';
import 'widgets/menu_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.dark,
        child: HomeViewBody(),
      ),
      drawer: MenuDrawer(),
    );
  }
}
