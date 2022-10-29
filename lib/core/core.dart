import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/core/core.config.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/splash/splash.dart';
import 'package:simple_quran/utils/utils.dart';

part 'core.gr.dart';

final getIt = GetIt.instance;
final appRoutes = getIt<AppRoutes>();
final dio = Dio(
  BaseOptions(
    baseUrl: QURAN_API_BASE_URL,
    connectTimeout: 600000,
    receiveTimeout: 600000,
  ),
);

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      initial: true,
      page: SplashPage,
      path: SplashPage.routeName,
    ),
    AutoRoute(
      page: QuranPage,
      path: QuranPage.routeName,
    ),
    AutoRoute(
      page: ChapterPage,
      path: ChapterPage.routeName,
    ),
  ],
)
class _AppRouter extends _$_AppRouter {}

@lazySingleton
class AppRoutes {
  final router = _AppRouter();
}
