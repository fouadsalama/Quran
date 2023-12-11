import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:islamic_app/core/widgets/custom_app_bar.dart';

import 'custom_surah_name_list_view.dart';
import 'last_read_quran.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> data = [
      'Al-Faatiha',
      " Al-Baqara",
      'سُورَةُٱلْفَاتِحَةِ'
    ];
    return Column(
      children: [
        const Gap(30),
        CustomAppBarWidgets(data: data),
        const Gap(45),
        const LastReadQuran(),
        const Gap(35),
        const CustomSurahNameListView(),
      ],
    );
  }
}
