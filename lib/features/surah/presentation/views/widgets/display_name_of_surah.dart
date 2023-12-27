import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../core/utils/app_assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../home/data/models/surah_model/datum.dart';

class DisplayNameOfSurah extends StatelessWidget {
  const DisplayNameOfSurah({
    super.key,
    required this.model,
  });

  final DataModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 47),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.name!,
                style: Styles.textStyle24.copyWith(
                  fontSize: 32,
                ),
              ),
              IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.expand_more,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 103),
          child: Divider(
            color: Colors.white,
          ),
        ),
        Expanded(
          child: Image.asset(
            AppAssets.bismillah,
          ),
        ),
        const Gap(7),
      ],
    );
  }
}
