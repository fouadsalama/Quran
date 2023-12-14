part of 'surah_name_cubit.dart';

sealed class SurahNameState extends Equatable {
  const SurahNameState();

  @override
  List<Object> get props => [];
}

final class SurahNameInitial extends SurahNameState {}

class SurahNameLoading extends SurahNameState {}

class SurahNameSuccess extends SurahNameState {
  final List<SurahModel> surah;

  const SurahNameSuccess(this.surah);
}

class SurahNameFailure extends SurahNameState {
  final String errorMessage;

  const SurahNameFailure(this.errorMessage);
}
