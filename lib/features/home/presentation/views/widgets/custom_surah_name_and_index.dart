import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/core/utils/app_routes.dart';
import 'package:islamic_app/core/utils/styles.dart';

import 'surah_index.dart';

class CustomSurahNameAndIndex extends StatelessWidget {
  const CustomSurahNameAndIndex({
    super.key,
    required this.surahModel,
  });
  final DataModel surahModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            GoRouter.of(context).push(
              AppRouter.kSurahDetailsView,
              extra: surahModel,
            );
          },
          child: Row(
            children: [
              SurahIndex(
                surahModel: surahModel,
              ),
              const Gap(19),
              Expanded(
                child: ListTile(
                  title: Text(
                    surahModel.englishName.toString(),
                    style: Styles.textStyle14,
                  ),
                  subtitle: Text(
                    '${surahModel.englishNameTranslation}(${surahModel.numberOfAyahs})',
                    style: GoogleFonts.montserrat(
                      textStyle: Styles.textStyle12.copyWith(
                        color: const Color(0xff858585),
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                surahModel.name.toString(),
                style: Styles.textStyle24.copyWith(
                  fontSize: 20,
                  color: const Color(0xff076C58),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
