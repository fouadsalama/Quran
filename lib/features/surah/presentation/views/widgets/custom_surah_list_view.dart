import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/Features/surah/data/manger/cubit/surah_details_cubit.dart';
import 'package:islamic_app/core/widgets/custom_loading_indicator.dart';

import 'surah_body.dart';

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SurahDetailsCubit, SurahDetailsState>(
        builder: (context, state) {
          if (state is SurahDetailsSuccess) {
            return ListView.builder(
              itemCount: state.surah.length,
              itemBuilder: (context, index) {
                return SurahBody(
                  model: state.surah[index],
                );
              },
            );
          } else if (state is SurahDetailsFailure) {
            return throw Exception(state.errMessage);
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
