part of 'bookmark_items_cubit.dart';

sealed class BookmarkItemsState extends Equatable {
  const BookmarkItemsState();

  @override
  List<Object> get props => [];
}

final class BookmarkItemsInitial extends BookmarkItemsState {}

class BookmarkRemoveItems extends BookmarkItemsState {
  final List<DataModel> surahItem;

  const BookmarkRemoveItems(this.surahItem);
}

class BookmarkAddItemsSuccess extends BookmarkItemsState {
  final List<DataModel> surah;

  const BookmarkAddItemsSuccess(this.surah);
}
