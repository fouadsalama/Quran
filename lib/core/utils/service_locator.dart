import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo_impl.dart';
import 'package:islamic_app/core/utils/api_service.dart';

import '../../Features/home/data/repo/home_repo_impl.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<APiService>(APiService(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<APiService>(),
    ),
  );
  getIt.registerSingleton<SurahRepoImpl>(
    SurahRepoImpl(
      getIt.get<APiService>(),
    ),
  );
}
