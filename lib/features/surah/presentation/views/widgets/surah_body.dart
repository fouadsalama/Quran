import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/surah_data/ayah.dart';

class SurahBody extends StatelessWidget {
  const SurahBody({super.key, required this.model});
  final Ayah model;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.transparent,
            ).copyWith(
              overlayColor: const MaterialStatePropertyAll(Colors.transparent),
            ),
            onPressed: () {},
            child: Text(
              model.text.toString(),
              softWrap: true,
              style: Styles.textStyle14.copyWith(
                color: kPrimaryColor,
                fontSize: kDefaultFontSize,
                fontWeight: FontWeight.bold,
                fontFamily: kAmiri,
              ),
            ),
          ),
          const Gap(10),
          Text(
            '',
            softWrap: true,
            style: GoogleFonts.montserrat(
              textStyle: Styles.textStyle14.copyWith(
                color: kPrimaryColor,
                fontSize: kDefaultFontSize,
              ),
            ),
          ),
          const Gap(23),
        ],
      ),
    );
  }
}
