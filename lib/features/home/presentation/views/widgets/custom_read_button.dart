import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/data/manger/last_read_cubit/last_read_cubit.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/core/utils/app_routes.dart';

import 'continue_button.dart';

class CustomReadButton extends StatelessWidget {
  const CustomReadButton({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LastReadCubit, LastReadState>(
      builder: (context, state) {
        if (state is LastReadSuccess) {
          return ContinueButton(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kSurahDetailsView,
                extra: state.dataModel,
              );
            },
          );
        } else {
          return ContinueButton(
            onTap: () {
              GoRouter.of(context).push(
                AppRouter.kSurahDetailsView,
                extra: dataModel,
              );
            },
          );
        }
      },
    );
  }
}
