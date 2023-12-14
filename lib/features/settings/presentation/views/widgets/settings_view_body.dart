import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
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
            children: [
              IconButton(
                onPressed: () {
                  GoRouter.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back),
              ),
              const Gap(10),
              Text(
                'Settings',
                style: Styles.textStyle25.copyWith(
                  fontSize: 20,
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
