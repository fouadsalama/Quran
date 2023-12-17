import 'package:dartz/dartz.dart';
import 'package:islamic_app/core/errors/failure.dart';

import '../model/surah_details_model/surah_details_model.dart';

abstract class SurahRepo {
  Future<Either<Failure, List<SurahDetailsModel>>> fetchSurahDetails();
}
