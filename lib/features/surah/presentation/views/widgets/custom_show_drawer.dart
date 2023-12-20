import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../../constants.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_loading_indicator.dart';
import '../../../../home/data/manger/surah_name_cubit/surah_name_cubit.dart';
import 'custom_display_surah_list_view.dart';

class CustomShowDrawer extends StatelessWidget {
  const CustomShowDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuery.of(context).size.height * 0.2,
      ),
      child: Drawer(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Gap(21),
              Container(
                width: 77,
                height: 31,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.5),
                  color: kPrimaryColor,
                ),
                child: Center(
                  child: Text(
                    'Surah',
                    style: Styles.textStyle14.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: BlocBuilder<SurahNameCubit, SurahNameState>(
                    builder: (context, state) {
                  if (state is SurahNameSuccess) {
                    return ListView.builder(
                      itemCount: state.surah.length,
                      itemBuilder: (context, index) {
                        return CustomDisplaySurahListView(
                          dataModel: state.surah[index],
                        );
                      },
                    );
                  } else {
                    return const CustomLoadingIndicator();
                  }
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
