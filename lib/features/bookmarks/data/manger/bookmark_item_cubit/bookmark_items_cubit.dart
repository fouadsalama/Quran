import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

part 'bookmark_items_state.dart';

class BookmarkItemsCubit extends Cubit<BookmarkItemsState> {
  BookmarkItemsCubit() : super(BookmarkItemsInitial());

  List<DataModel> model = [];

  void addBookmark(DataModel surahModel) async {
    if (model.contains(surahModel)) {
      model.remove(surahModel);

      print(model);

      emit(BookmarkRemoveItems(model));
    } else {
      model.add(surahModel);

      print(model);

      emit(BookmarkItemsInitial());
    }
    emit(BookmarkAddItemsSuccess(model));
  }
}
