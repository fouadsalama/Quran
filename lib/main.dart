import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamic_app/Features/home/data/manger/last_read_cubit/last_read_cubit.dart';
import 'package:islamic_app/Features/home/data/manger/surah_name_cubit/surah_name_cubit.dart';
import 'package:islamic_app/Features/home/data/repo/home_repo_impl.dart';
import 'package:islamic_app/core/utils/app_routes.dart';
import 'package:islamic_app/core/utils/service_locator.dart';
import 'package:islamic_app/simple_bloc_observer.dart';

import 'Features/bookmarks/data/manger/cubit/bookmark_items_cubit.dart';
import 'Features/surah/data/manger/surah_details_ar_cubit/surah_details_cubit.dart';
import 'Features/surah/data/repo/surah_repo_impl.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark,
  ));
  setupServiceLocator();
  Bloc.observer = SimpleBlocObserver();
  runApp(const IslamicApp());
}

class IslamicApp extends StatelessWidget {
  const IslamicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocProvider(
          create: (context) => SurahNameCubit(
            getIt.get<HomeRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => SurahDetailsArCubit(
            getIt.get<SurahRepoImpl>(),
          ),
        ),
        BlocProvider(
          create: (context) => LastReadCubit(),
        ),
        BlocProvider(
          create: (context) => BookmarkItemsCubit(),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
          textTheme: GoogleFonts.poppinsTextTheme(
            ThemeData.light().textTheme,
          ),
        ),
      ),
    );
  }
}
