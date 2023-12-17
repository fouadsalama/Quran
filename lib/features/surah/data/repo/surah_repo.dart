import 'package:dartz/dartz.dart';
import 'package:islamic_app/Features/surah/data/model/surah_details_model/data.dart';
import 'package:islamic_app/core/errors/failure.dart';

abstract class SurahRepo {
  Future<Either<Failure, List<Data>>> fetchSurahDetails({required int number});
}
