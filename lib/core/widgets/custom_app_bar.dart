import 'package:flutter/material.dart';
import 'package:islamic_app/core/utils/styles.dart';

import '../../Features/home/presentation/views/widgets/custom_app_bar_ico.dart';
import '../../Features/home/presentation/views/widgets/custom_search_dialog.dart';
import 'app_bar_icons.dart';

class CustomAppBarWidgets extends StatelessWidget {
  const CustomAppBarWidgets({
    super.key,
    required this.data,
  });

  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListTile(
            leading: Builder(builder: (context) {
              return AppBarIcons(
                icon: const CustomAppBarIcons(
                  image: 'assets/images/menu.png',
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              );
            }),
            title: const Text(
              'Quran',
              style: Styles.textStyle30,
              textAlign: TextAlign.center,
            ),
            trailing: AppBarIcons(
              icon: const CustomAppBarIcons(
                image: 'assets/images/search.png',
              ),
              onPressed: () {
                showSearch(
                  context: context,
                  delegate: CustomSearchDelegate(data),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
