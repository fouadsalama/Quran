import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/surah/data/model/surah_details_model/data.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo.dart';

part 'surah_details_state.dart';

class SurahDetailsCubit extends Cubit<SurahDetailsState> {
  SurahDetailsCubit(this.surahRepo) : super(SurahDetailsInitial());
  final SurahRepo surahRepo;
  Future<void> fetchAyahs(int number) async {
    emit(SurahDetailsLoading());

    var result = await surahRepo.fetchSurahDetails(number: number);
    result.fold((failure) {
      emit(SurahDetailsFailure(failure.errMessage));
    }, (surah) {
      emit(SurahDetailsSuccess(surah));
    });
  }
}
