import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';

import '../models/surah_data/ayah.dart';

abstract class SurahRepo {
  Future<Either<Failure, List<Ayah>>> fetchSurahDetails({
    required int number,
  });
  Future<Either<Failure, List<Ayah>>> fetchSurahEnText({
    required int number,
  });
}
