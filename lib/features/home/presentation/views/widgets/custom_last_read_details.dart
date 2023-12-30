import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Features/home/data/manger/last_read_cubit/last_read_cubit.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

import '../../../../../core/utils/styles.dart';
import 'custom_read_button.dart';

class CustomLastReadDetails extends StatelessWidget {
  const CustomLastReadDetails({
    super.key,
    required this.model,
  });
  final DataModel model;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Last Read',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyle12,
          ),
        ),
        const Gap(11),
        BlocBuilder<LastReadCubit, LastReadState>(
          builder: (context, state) {
            return Text(
              state is LastReadSuccess ? state.dataModel.name! : model.name!,
              style: Styles.textStyle24,
            );
          },
        ),
        const Gap(3),
        Text(
          'Ayah no. 1',
          style: GoogleFonts.inter(
            textStyle: Styles.textStyle12,
          ),
        ),
        const Gap(14),
        CustomReadButton(
          dataModel: model,
        ),
      ],
    );
  }
}
