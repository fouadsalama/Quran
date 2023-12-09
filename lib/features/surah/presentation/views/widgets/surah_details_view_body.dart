import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'custom_surah_list_view.dart';

import 'surah_name_section.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SurahNameSection(),
        Gap(39),
        CustomSurahListView(),
      ],
    );
  }
}
