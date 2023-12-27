import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import '../../data/manger/surah_details_ar_cubit/surah_details_cubit.dart';
import 'widgets/custom_show_drawer.dart';
import 'widgets/surah_details_view_body.dart';

class SurahDetailsView extends StatefulWidget {
  const SurahDetailsView({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;

  @override
  State<SurahDetailsView> createState() => _SurahDetailsViewState();
}

class _SurahDetailsViewState extends State<SurahDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SurahDetailsArCubit>(context)
        .fetchSurahText(number: widget.dataModel.number!);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SurahDetailsViewBody(
        dataModel: widget.dataModel,
      ),
      drawer: const CustomShowDrawer(),
    );
  }
}
