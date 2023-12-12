import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/constants.dart';
import 'package:islamic_app/core/utils/styles.dart';

class CustomSurahDetailsIcons extends StatelessWidget {
  const CustomSurahDetailsIcons({
    super.key,
  });

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
            onSelected: (value) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                child: ListTile(
                  leading: Icon(
                    Icons.bookmark_border_outlined,
                    color: kPrimaryColor.withOpacity(0.6),
                  ),
                  title: Text(
                    'Bookmark',
                    style: GoogleFonts.montserrat(
                      textStyle: Styles.textStyle16.copyWith(
                        color: kPrimaryColor.withOpacity(0.8),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
