import 'package:flutter/material.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'widgets/surah_details_view_body.dart';

class SurahDetailsView extends StatelessWidget {
  const SurahDetailsView({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SurahDetailsViewBody(
        dataModel: dataModel,
      ),
    );
  }
}
