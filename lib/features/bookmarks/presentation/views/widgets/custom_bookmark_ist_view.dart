import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/manger/cubit/bookmark_items_cubit.dart';
import 'bookmark_item_widget.dart';

class CustomBookmarkListView extends StatelessWidget {
  const CustomBookmarkListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookmarkItemsCubit, BookmarkItemsState>(
      builder: (context, state) {
        if (state is BookmarkAddItemsSuccess) {
          return BookmarkListViewItem(surahList: state.surah);
        } else if (state is BookmarkRemoveItems) {
          return BookmarkListViewItem(surahList: state.surahItem);
        } else {
          return Container();
        }
      },
    );
  }
}
