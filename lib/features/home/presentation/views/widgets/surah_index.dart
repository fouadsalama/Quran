import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

import '../../../../../core/utils/styles.dart';

class SurahIndex extends StatelessWidget {
  const SurahIndex({
    super.key,
    required this.surahModel,
  });
  final DataModel surahModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 36,
      height: 36,
      decoration: BoxDecoration(
        color: const Color(0xff87D1A4),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Center(
        child: Text(
          surahModel.number.toString(),
          style: GoogleFonts.montserrat(
            textStyle: Styles.textStyle16,
          ),
        ),
      ),
    );
  }
}
