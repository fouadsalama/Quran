import 'package:flutter/material.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import '../../../../../core/utils/app_assets.dart';
import 'custom_surah_details_icons.dart';
import 'custom_box_details.dart';
import 'custom_shadow.dart';

class SurahNameSection extends StatelessWidget {
  const SurahNameSection({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 146,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xff006754),
                Color(0xff87D1A4),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            image: DecorationImage(
              opacity: 0.1,
              scale: 2.8,
              alignment: FractionalOffset(1, 1.7),
              image: AssetImage(
                AppAssets.logo,
              ),
            ),
          ),
          child: CustomBoxDetails(
            model: dataModel,
          ),
        ),
        CustomSurahDetailsIcons(
          dataModel: dataModel,
        ),
        const CustomShadow(),
      ],
    );
  }
}
