import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/Features/home/data/manger/surah_name_cubit/surah_name_cubit.dart';

import 'custom_surah_name_and_index.dart';

class CustomSurahNameListView extends StatelessWidget {
  const CustomSurahNameListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SurahNameCubit, SurahNameState>(
        builder: (context, state) {
      if (state is SurahNameSuccess) {
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
      } else {
        return const Expanded(
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      }
    });
  }
}
