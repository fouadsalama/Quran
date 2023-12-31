import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/Features/home/data/repo/home_repo.dart';

part 'surah_name_state.dart';

class SurahNameCubit extends Cubit<SurahNameState> {
  SurahNameCubit(this.homeRepo) : super(SurahNameInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSurahName() async {
    emit(SurahNameLoading());
    var result = await homeRepo.fetchSurah();

    return result.fold(
      (failure) {
        emit(SurahNameFailure(failure.errMessage));
      },
      (surah) {
        emit(SurahNameSuccess(surah));
      },
    );
  }
}
