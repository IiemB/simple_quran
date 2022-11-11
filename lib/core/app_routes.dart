part of 'core.dart';

final appRoutes = getIt<AppRoutes>();

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
      children: [
        AutoRoute(
          name: 'AboutDrawerRoute',
          page: EmptyRouterPage,
          path: AboutPage.routeName,
          children: [
            AutoRoute(
              page: AboutPage,
              path: '',
            ),
            AutoRoute(
              page: LicensesPage,
              path: LicensesPage.routeName,
            ),
            AutoRoute(
              page: LicensesDetailPage,
              path: LicensesDetailPage.routeName,
            ),
          ],
        ),
      ],
    ),
    RedirectRoute(
      path: '${ChapterPage.routeName}/:id',
      redirectTo: '${QuranPage.routeName}/${ChapterPage.routeName}/:id',
    ),
    AutoRoute(
      page: ChapterPage,
      path: '${QuranPage.routeName}/${ChapterPage.routeName}/:id',
    ),
  ],
)
class $AppRouter {}

@lazySingleton
class AppRoutes {
  final router = AppRouter();
}
