import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import '../../../../../constants.dart';

import '../../../../bookmarks/data/manger/bookmark_item_cubit/bookmark_items_cubit.dart';
import 'display_name_of_surah.dart';

class CustomBoxDetails extends StatelessWidget {
  const CustomBoxDetails({
    super.key,
    required this.model,
  });
  final DataModel model;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        DisplayNameOfSurah(model: model),
        BlocBuilder<BookmarkItemsCubit, BookmarkItemsState>(
          builder: (context, state) {
            final isSelected = BlocProvider.of<BookmarkItemsCubit>(context)
                .model
                .contains(model);
            return IconButton(
              onPressed: () {
                BlocProvider.of<BookmarkItemsCubit>(context).addBookmark(model);
              },
              icon: Icon(
                isSelected ? Icons.bookmark : Icons.bookmark_border_outlined,
                color:
                    isSelected ? kPrimaryColor.withOpacity(0.6) : Colors.white,
              ),
            );
          },
        ),
      ],
    );
  }
}
