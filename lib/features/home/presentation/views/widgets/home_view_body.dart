import 'package:flutter/material.dart';
import 'custom_surah_name_and_index.dart';
import 'last_read_quran.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(height: 45),
          const LastReadQuran(),
          const SizedBox(height: 35),
          // Text(
          //   'Surah',
          //   style: GoogleFonts.montserrat(
          //     textStyle: Styles.textStyle16,
          //   ),
          // ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomSurahNameAndIndex();
              },
            ),
          ),
        ],
      ),
    );
  }
}
