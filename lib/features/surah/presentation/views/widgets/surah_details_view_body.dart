import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'surah_body.dart';
import 'surah_name_section.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SurahNameSection(),
        const Gap(39),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return const SurahBody();
            },
          ),
        ),
      ],
    );
  }
}
