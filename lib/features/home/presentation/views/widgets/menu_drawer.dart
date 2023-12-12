import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/core/utils/app_assets.dart';
import 'package:islamic_app/core/utils/app_routes.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_drawer_list_tile.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff006754),
                  Color(0xff61B48E),
                ],
              ),
              // color: kPrimaryColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Quran',
                  style: Styles.textStyle20.copyWith(
                    color: Colors.white,
                  ),
                ),
                Image.asset(
                  AppAssets.logo,
                  opacity: const AlwaysStoppedAnimation(0.2),
                ),
              ],
            ),
          ),
          CustomDrawerListTile(
            title: 'Home',
            icon: Icons.home,
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          CustomDrawerListTile(
            title: 'Bookmarks',
            icon: Icons.menu_book,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kBookmarksView);
            },
          ),
          CustomDrawerListTile(
            title: 'Settings',
            icon: Icons.settings,
            onTap: () {
              GoRouter.of(context).push(AppRouter.kSettingsView);
            },
          ),
        ],
      ),

      // child: Container(),
    );
  }
}
