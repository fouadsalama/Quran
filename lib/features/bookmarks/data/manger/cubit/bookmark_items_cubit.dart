import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';

part 'bookmark_items_state.dart';

class BookmarkItemsCubit extends Cubit<BookmarkItemsState> {
  BookmarkItemsCubit() : super(BookmarkItemsInitial());

  final Set<DataModel> _model = {};

  Set<DataModel> get dataModel => _model;

  void addBookmark(DataModel surahModel) {
    if (_model.contains(surahModel)) {
      _model.remove(surahModel);
      emit(BookmarkRemoveItems(_model));
    } else {
      _model.add(surahModel);
      emit(BookmarkItemsInitial());
    }
    emit(BookmarkAddItemsSuccess(_model));
  }
}
