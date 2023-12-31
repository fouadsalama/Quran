import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo.dart';

import '../../models/surah_data/ayah.dart';

part 'surah_details_state.dart';

class SurahDetailsArCubit extends Cubit<SurahDetailsState> {
  SurahDetailsArCubit(this.surahRepo) : super(SurahDetailsInitial());
  final SurahRepo surahRepo;
  Future<void> fetchSurahText({required int number}) async {
    emit(SurahDetailsLoading());

    var result = await surahRepo.fetchSurahArText(number: number);

    result.fold((failure) {
      emit(SurahDetailsFailure(failure.errMessage));
    }, (surah) {
      emit(SurahDetailsSuccess(surah));
    });
  }
}
