import 'package:dartz/dartz.dart';
import 'package:islamic_app/Features/surah/data/model/surah_details_model/data.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/api_service.dart';

class SurahRepoImpl implements SurahRepo {
  APiService aPiService;

  SurahRepoImpl(this.aPiService);

  @override
  Future<Either<Failure, List<SurahDataContent>>> fetchSurahDetails(
      {required int number}) async {
    try {
      var data = await aPiService.get(
          url: 'https://api.alquran.cloud/v1/surah/$number/ar.alafasy');

      List<SurahDataContent> surahList = [];
      for (var surahData in data['data']['ayahs']) {
        try {
          surahList.add(SurahDataContent.fromJson(surahData));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(surahList);
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }
}
