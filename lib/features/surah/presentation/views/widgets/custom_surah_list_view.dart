import 'package:flutter/material.dart';

import 'surah_body.dart';

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return const SurahBody();
        },
      ),
    );
  }
}
