import 'package:flutter/material.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'custom_surah_list_view.dart';

import 'surah_name_section.dart';

class SurahDetailsViewBody extends StatelessWidget {
  const SurahDetailsViewBody({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SurahNameSection(
          dataModel: dataModel,
        ),
        CustomSurahListView(
          dataModel: dataModel,
        ),
      ],
    );
  }
}
