import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/constants.dart';
import 'package:islamic_app/core/utils/app_assets.dart';

import '../../../../../core/utils/styles.dart';

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
          ListTile(
            leading: const Icon(
              Icons.home,
              color: kPrimaryColor,
            ),
            title: const Text(
              'Home',
            ),
            onTap: () {
              GoRouter.of(context).pop();
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: kPrimaryColor,
            ),
            title: const Text('Settings'),
            onTap: () {},
          ),
        ],
      ),

      // child: Container(),
    );
  }
}
