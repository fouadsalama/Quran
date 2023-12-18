import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/model/surah_details_model/data.dart';

class SurahBody extends StatelessWidget {
  const SurahBody({super.key, required this.model});
  final SurahDataContent model;
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
              model.numberOfAyahs.toString(),
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
            'O believers! Do not violate Allah\’s rituals ˹of pilgrimage˺, the sacred months, the sacrificial animals, the ˹offerings decorated with˺ garlands, nor those ˹pilgrims˺ on their way to the Sacred House seeking their Lord’s bounty and pleasure. When pilgrimage has ended, you are allowed to hunt. Do not let the hatred of a people who once barred you from the Sacred Mosque provoke you to transgress. Cooperate with one another in goodness and righteousness, and do not cooperate in sin and transgression. And be mindful of Allah. Surely Allah is severe in punishment.',
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
