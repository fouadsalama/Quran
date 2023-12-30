import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:islamic_app/Features/surah/data/models/surah_data/ayah.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo.dart';

part 'surah_en_details_state.dart';

class SurahEnDetailsCubit extends Cubit<SurahEnDetailsState> {
  SurahEnDetailsCubit(this.surahRepo) : super(SurahEnDetailsInitial());
  final SurahRepo surahRepo;

  Future<void> surahEnDetails({required int number}) async {
    emit(SurahEnDetailsLoading());

    var results = await surahRepo.fetchSurahEnText(number: number);

    results.fold((failure) {
      emit(SurahEnDetailsFailure(failure.errMessage));
    }, (surah) {
      emit(SurahEnDetailsSuccess(surah));
    });
  }
}
