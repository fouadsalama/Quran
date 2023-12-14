import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/constants.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_language_widget.dart';

class CustomSettingViewItems extends StatefulWidget {
  const CustomSettingViewItems({super.key});

  @override
  State<CustomSettingViewItems> createState() => _CustomSettingViewItemsState();
}

class _CustomSettingViewItemsState extends State<CustomSettingViewItems> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Language',
            style: GoogleFonts.elMessiri(
              textStyle: Styles.textStyle25,
            ),
          ),
          const Gap(20),
          Row(
            children: [
              CustomLanguageWidget(
                text: 'عربي',
                onPressed: () {},
              ),
              const Gap(25),
              CustomLanguageWidget(
                text: 'English',
                onPressed: () {},
              ),
            ],
          ),
          const Gap(30),
          const Text(
            'Font Size',
            style: Styles.textStyle18,
          ),
          Slider(
            value: kDefaultFontSize,
            min: 10,
            max: 30,
            onChanged: (value) {
              setState(() {
                kDefaultFontSize = value;
              });
            },
          )
        ],
      ),
    );
  }
}
