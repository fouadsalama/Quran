import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/presentation/views/widgets/custom_surah_name_and_index.dart';
import 'package:islamic_app/core/utils/styles.dart';

import '../../../../../core/widgets/app_bar_icons.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppBarIcons(
            icon: const Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              GoRouter.of(context).pop();
            },
          ),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 24),
                  child: Text(
                    'Bookmarks',
                    style: Styles.textStyle30,
                  ),
                ),
                Gap(15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18),
                  child: CustomSurahNameAndIndex(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
