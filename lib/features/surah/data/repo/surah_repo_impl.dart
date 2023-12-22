import 'package:dartz/dartz.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/api_service.dart';

import '../models/surah_data/ayah.dart';

class SurahRepoImpl implements SurahRepo {
  APiService aPiService;

  SurahRepoImpl(this.aPiService);

  @override
  Future<Either<Failure, List<Ayah>>> fetchSurahDetails(
      {required int number}) async {
    try {
      var data = await aPiService.get(
          url: 'https://api.alquran.cloud/v1/surah/$number/ar.alafasy');

      List<Ayah> surahList = [];
      for (var surahData in data['data']['ayahs']) {
        try {
          surahList.add(Ayah.fromJson(surahData));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(surahList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<Ayah>>> fetchSurahEnText(
      {required int number}) async {
    try {
      var data = await aPiService.get(
          url: 'https://api.alquran.cloud/v1/surah/$number/en.asad');
      List<Ayah> surahList = [];
      for (var surahData in data['data']['ayahs']) {
        try {
          surahList.add(Ayah.fromJson(surahData));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(surahList);
    } catch (e) {
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
