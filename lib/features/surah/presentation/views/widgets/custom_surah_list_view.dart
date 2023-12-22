import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/core/widgets/custom_error_widget.dart';
import 'package:islamic_app/core/widgets/custom_loading_indicator.dart';

import '../../../data/manger/surah_details_cubit/surah_details_cubit.dart';
import 'surah_body.dart';

class CustomSurahListView extends StatelessWidget {
  const CustomSurahListView({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<SurahDetailsCubit, SurahDetailsState>(
        builder: (context, state) {
          if (state is SurahDetailsSuccess) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(
                parent: BouncingScrollPhysics(),
              ),
              itemCount: state.surah.length,
              itemBuilder: (context, index) {
                return SurahBody(
                  model: state.surah[index],
                  dataModel: dataModel,
                );
              },
            );
          } else if (state is SurahDetailsFailure) {
            return CustomFailureWidget(
              errMessage: state.errMessage,
            );
          } else {
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
