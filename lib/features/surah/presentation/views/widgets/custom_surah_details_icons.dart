import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/constants.dart';
import 'package:islamic_app/core/utils/styles.dart';

import '../../../../bookmarks/data/manger/cubit/bookmark_items_cubit.dart';

class CustomSurahDetailsIcons extends StatelessWidget {
  const CustomSurahDetailsIcons({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 47),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          PopupMenuButton(
            position: PopupMenuPosition.under,
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                onTap: () {
                  BlocProvider.of<BookmarkItemsCubit>(context)
                      .addBookmark(dataModel);
                },
                child: Row(
                  children: [
                    Icon(
                      Icons.bookmark_border_outlined,
                      color: kPrimaryColor.withOpacity(0.6),
                    ),
                    Text(
                      'Bookmark',
                      style: GoogleFonts.montserrat(
                        textStyle: Styles.textStyle16.copyWith(
                          color: kPrimaryColor.withOpacity(0.8),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
