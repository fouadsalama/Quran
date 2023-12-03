import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/utils/styles.dart';

import 'surah_index.dart';

class CustomSurahNameAndIndex extends StatelessWidget {
  const CustomSurahNameAndIndex({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SurahIndex(),
            const SizedBox(width: 19),
            Expanded(
              child: ListTile(
                title: const Text(
                  'Al-Faatiha',
                  style: Styles.textStyle14,
                ),
                subtitle: Text(
                  'The Opening (7)',
                  style: GoogleFonts.montserrat(
                    textStyle: Styles.textStyle12.copyWith(
                      color: const Color(0xff858585),
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'الفاتحه',
              style: Styles.textStyle24.copyWith(
                fontSize: 20,
                color: const Color(0xff076C58),
              ),
            ),
          ],
        ),
        const Divider(color: Color(0xffD9D8D8)),
      ],
    );
  }
}
