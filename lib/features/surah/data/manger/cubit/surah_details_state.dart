part of 'surah_details_cubit.dart';

sealed class SurahDetailsState extends Equatable {
  const SurahDetailsState();

  @override
  List<Object> get props => [];
}

final class SurahDetailsInitial extends SurahDetailsState {}

class SurahDetailsLoading extends SurahDetailsState {}

class SurahDetailsSuccess extends SurahDetailsState {
  final List<Ayah> surah;

  const SurahDetailsSuccess(this.surah);
}

class SurahDetailsFailure extends SurahDetailsState {
  final String errMessage;

  const SurahDetailsFailure(this.errMessage);
}
