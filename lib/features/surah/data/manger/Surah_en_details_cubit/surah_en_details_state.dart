part of 'surah_en_details_cubit.dart';

sealed class SurahEnDetailsState extends Equatable {
  const SurahEnDetailsState();

  @override
  List<Object> get props => [];
}

final class SurahEnDetailsInitial extends SurahEnDetailsState {}

class SurahEnDetailsLoading extends SurahEnDetailsState {}

class SurahEnDetailsSuccess extends SurahEnDetailsState {
  final List<Ayah> surah;

  const SurahEnDetailsSuccess(this.surah);
}

class SurahEnDetailsFailure extends SurahEnDetailsState {
  final String message;

  const SurahEnDetailsFailure(this.message);
}
