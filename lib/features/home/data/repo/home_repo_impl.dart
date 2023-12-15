import 'package:dartz/dartz.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/surah_model.dart';
import 'package:islamic_app/Features/home/data/repo/home_repo.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  APiService aPiService;
  HomeRepoImpl(this.aPiService);

  @override
  Future<Either<Failure, List<SurahModel>>> fetchSurah() async {
    try {
      var data =
          await aPiService.get(url: 'https://api.alquran.cloud/v1/surah');
      List<SurahModel> surahList = [];
      for (var item in data['data']) {
        try {
          surahList.add(SurahModel.fromJson(item));
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
