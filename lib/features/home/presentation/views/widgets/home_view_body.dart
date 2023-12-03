import 'package:flutter/material.dart';

import 'last_read_quran.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 45),
          LastReadQuran(),
        ],
      ),
    );
  }
}
