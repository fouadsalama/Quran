import 'package:flutter/material.dart';

import 'custom_surah_name_and_index.dart';

class CustomSurahNameListView extends StatelessWidget {
  const CustomSurahNameListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const Column(
              children: [
                CustomSurahNameAndIndex(),
                Divider(
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
