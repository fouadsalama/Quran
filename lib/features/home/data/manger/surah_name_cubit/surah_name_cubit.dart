import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/surah_model.dart';
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
