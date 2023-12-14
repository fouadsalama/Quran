import 'package:dartz/dartz.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/surah_model.dart';

import '../../../../core/errors/failure.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<SurahModel>>> fetchSurah();
}
