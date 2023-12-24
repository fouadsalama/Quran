import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

part 'bookmark_items_state.dart';

class BookmarkItemsCubit extends Cubit<BookmarkItemsState> {
  BookmarkItemsCubit() : super(BookmarkItemsInitial());
  List<DataModel> surahList = [];
  void addBookmark(DataModel dataModel) {
    if (surahList.contains(dataModel)) {
      surahList.remove(dataModel);
      print(surahList);
      emit(BookmarkRemoveItems(surahList));
    } else {
      surahList.add(dataModel);
      print(surahList);
    }
    emit(BookmarkAddItemsSuccess(surahList));
  }
}
