import 'package:flutter/material.dart';

import '../../../../home/data/models/surah_model/datum.dart';
import '../../../../home/presentation/views/widgets/custom_surah_name_and_index.dart';

class BookmarkItemWidget extends StatelessWidget {
  const BookmarkItemWidget({
    super.key,
    required this.surahList,
  });

  final List<DataModel> surahList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: ListView.builder(
          itemCount: surahList.length,
          itemBuilder: (context, index) {
            final model = surahList.elementAt(index);
            return Column(
              children: [
                CustomSurahNameAndIndex(
                  surahModel: model,
                ),
                const Divider(
                  color: Color(0xffD9D8D8),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
