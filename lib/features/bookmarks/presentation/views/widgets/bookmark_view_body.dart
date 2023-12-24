import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/utils/styles.dart';

import '../../../../../core/widgets/app_bar_icons.dart';
import 'custom_bookmark_ist_view.dart';

class BookmarkViewBody extends StatelessWidget {
  const BookmarkViewBody({
    super.key,
  });

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
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 24),
                  child: Text(
                    'Bookmarks',
                    style: GoogleFonts.elMessiri(
                      textStyle: Styles.textStyle30,
                    ),
                  ),
                ),
                const Gap(15),
                const CustomBookmarkListView(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
