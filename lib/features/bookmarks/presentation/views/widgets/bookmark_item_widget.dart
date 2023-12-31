import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/surah_model/datum.dart';
import '../../../../home/presentation/views/widgets/surah_index.dart';

class BookmarkListViewItem extends StatelessWidget {
  const BookmarkListViewItem({
    super.key,
    required this.surahList,
  });

  final Set<DataModel> surahList;

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
                GestureDetector(
                  onTap: () {
                    GoRouter.of(context).push(
                      AppRouter.kSurahDetailsView,
                      extra: model,
                    );
                  },
                  child: Row(
                    children: [
                      SurahIndex(
                        surahModel: model,
                      ),
                      const Gap(19),
                      Expanded(
                        child: ListTile(
                          title: Text(
                            model.englishName.toString(),
                            style: Styles.textStyle14,
                          ),
                          subtitle: Text(
                            '${model.englishNameTranslation}(${model.numberOfAyahs})',
                            style: GoogleFonts.montserrat(
                              textStyle: Styles.textStyle12.copyWith(
                                color: const Color(0xff858585),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        model.name.toString(),
                        style: Styles.textStyle24.copyWith(
                          fontSize: 20,
                          color: const Color(0xff076C58),
                        ),
                      ),
                    ],
                  ),
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
