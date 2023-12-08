import 'package:go_router/go_router.dart';
import 'package:islamic_app/Features/home/presentation/views/home_view.dart';
import 'package:islamic_app/Features/search/presentation/views/search_view.dart';
import 'package:islamic_app/Features/splash/presentation/views/splash_view.dart';
import 'package:islamic_app/Features/surah/presentation/views/surah_details_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kSurahDetailsView = '/surahView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kSurahDetailsView,
        builder: (context, state) => const SurahDetailsView(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) {
          return const SearchView();
        },
      ),
    ],
  );
}
