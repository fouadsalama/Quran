import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../../core/utils/app_routes.dart';
import '../../../../home/data/models/surah_model/datum.dart';

class CustomDisplaySurahListView extends StatelessWidget {
  const CustomDisplaySurahListView({
    super.key,
    required this.dataModel,
  });
  final DataModel dataModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(dataModel.englishName!),
      subtitle: Text(dataModel.name!),
      onTap: () {
        GoRouter.of(context).pushReplacement(
          AppRouter.kSurahDetailsView,
          extra: dataModel,
        );
      },
    );
  }
}
