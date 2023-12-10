import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/styles.dart';
import 'widgets/custom_app_bar_ico.dart';
import 'widgets/custom_search_dialog.dart';
import 'widgets/home_view_body.dart';
import 'widgets/menu_drawer.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = [
      'Al-Faatiha',
      " Al-Baqara",
      'سُورَةُٱلْفَاتِحَةِ'
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xff888888)),
        title: const Center(
          child: Text(
            'Quran',
            style: Styles.textStyle20,
          ),
        ),
        leading: Builder(builder: (context) {
          return IconButton(
            icon: const CustomAppBarIcons(
              image: 'assets/images/menu.png',
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          );
        }),
        actions: [
          IconButton(
            icon: const CustomAppBarIcons(
              image: 'assets/images/search.png',
            ),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(data),
              );
            },
          )
        ],
      ),
      body: const HomeViewBody(),
      drawer: const MenuDrawer(),
    );
  }
}
