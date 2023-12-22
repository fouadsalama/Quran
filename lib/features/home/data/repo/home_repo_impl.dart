import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/Features/home/data/repo/home_repo.dart';
import 'package:islamic_app/core/errors/failure.dart';
import 'package:islamic_app/core/utils/api_service.dart';

class HomeRepoImpl implements HomeRepo {
  APiService aPiService;
  HomeRepoImpl(this.aPiService);

  @override
  Future<Either<Failure, List<DataModel>>> fetchSurah() async {
    try {
      var data =
          await aPiService.get(url: 'https://api.alquran.cloud/v1/surah');

      List<DataModel> surahList = [];
      for (var surahData in data['data']) {
        try {
          surahList.add(DataModel.fromJson(surahData));
        } catch (e) {
          throw Exception(e.toString());
        }
      }
      return right(surahList);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      } else {
        return left(ServerFailure(e.toString()));
      }
    }
  }
}
