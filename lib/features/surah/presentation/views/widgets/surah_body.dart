import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';

class SurahBody extends StatelessWidget {
  const SurahBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.play_arrow,
                  color: kPrimaryColor,
                ),
              ),
              Text(
                'ٱلۡحَمۡدُ لِلَّهِ رَبِّ ٱلۡعَٰلَمِينَ',
                style: GoogleFonts.amiri(
                  textStyle: Styles.textStyle30,
                ),
              ),
            ],
          ),
          const Gap(10),
          Text(
            'All praise is due to God alone, the Sustainer of all the worlds,',
            softWrap: true,
            style: GoogleFonts.montserrat(
              textStyle: Styles.textStyle14.copyWith(
                color: kPrimaryColor,
              ),
            ),
          ),
          const Gap(23),
        ],
      ),
    );
  }
}
