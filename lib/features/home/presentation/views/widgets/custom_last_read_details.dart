import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_read_button.dart';

class CustomLastReadDetails extends StatelessWidget {
  const CustomLastReadDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Last Read',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyle12,
          ),
        ),
        const Gap(11),
        const Text(
          'الفاتحه',
          style: Styles.textStyle24,
        ),
        const Gap(3),
        Text(
          'Ayah no. 1',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyle12,
          ),
        ),
        const Gap(14),
        const CustomReadButton(),
      ],
    );
  }
}
