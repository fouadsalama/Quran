import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/bookmarks/presentation/views/bookmarks_view.dart';
import 'package:islamic_app/Features/home/data/models/surah_model/datum.dart';
import 'package:islamic_app/Features/home/presentation/views/home_view.dart';
import 'package:islamic_app/Features/settings/presentation/views/settings_view.dart';
import 'package:islamic_app/Features/splash/presentation/views/splash_view.dart';
import 'package:islamic_app/Features/surah/data/repo/surah_repo_impl.dart';
import 'package:islamic_app/Features/surah/presentation/views/surah_details_view.dart';
import 'package:islamic_app/core/utils/service_locator.dart';

import '../../Features/surah/data/manger/cubit/surah_details_cubit.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSurahDetailsView = '/surahView';
  static const kBookmarksView = '/bookmarksView';
  static const kSettingsView = '/settingsView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kSurahDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SurahDetailsCubit(
            getIt.get<SurahRepoImpl>(),
          ),
          child: SurahDetailsView(
            dataModel: state.extra as DataModel,
          ),
        ),
      ),
      GoRoute(
        path: kBookmarksView,
        builder: (context, state) => const BookmarksView(),
      ),
      GoRoute(
        path: kSettingsView,
        builder: (context, state) => const SettingsView(),
      ),
    ],
  );
}
