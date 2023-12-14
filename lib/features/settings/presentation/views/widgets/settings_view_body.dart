import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/core/utils/styles.dart';

import 'custom_setting_view_item.dart';

class SettingsViewBody extends StatelessWidget {
  const SettingsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Settings',
                style: GoogleFonts.elMessiri(
                  textStyle: Styles.textStyle30.copyWith(
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          const Gap(30),
          const CustomSettingViewItems(),
        ],
      ),
    );
  }
}
