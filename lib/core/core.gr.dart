// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'core.dart';

class _$_AppRouter extends RootStackRouter {
  _$_AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const SplashPage(),
      );
    },
    QuranRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const QuranPage(),
      );
    },
    ChapterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChapterRouteArgs>(
          orElse: () => ChapterRouteArgs(id: pathParams.getInt('id')));
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ChapterPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AboutDrawerRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const EmptyRouterPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const AboutPage(),
      );
    },
    LicensesRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: const LicensesPage(),
      );
    },
    LicensesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<LicensesDetailRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: LicensesDetailPage(
          key: args.key,
          packageName: args.packageName,
          licenseEntries: args.licenseEntries,
        ),
      );
    },
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        RouteConfig(
          QuranRoute.name,
          path: 'quran',
          children: [
            RouteConfig(
              AboutDrawerRoute.name,
              path: 'aboutDrawerRoute',
              parent: QuranRoute.name,
              children: [
                RouteConfig(
                  '#redirect',
                  path: '',
                  parent: AboutDrawerRoute.name,
                  redirectTo: 'about',
                  fullMatch: true,
                ),
                RouteConfig(
                  AboutRoute.name,
                  path: 'about',
                  parent: AboutDrawerRoute.name,
                ),
                RouteConfig(
                  LicensesRoute.name,
                  path: 'licenses',
                  parent: AboutDrawerRoute.name,
                ),
                RouteConfig(
                  LicensesDetailRoute.name,
                  path: 'lisenses-detail',
                  parent: AboutDrawerRoute.name,
                ),
              ],
            )
          ],
        ),
        RouteConfig(
          'chapter/:id#redirect',
          path: 'chapter/:id',
          redirectTo: 'quran/chapter/:id',
          fullMatch: true,
        ),
        RouteConfig(
          ChapterRoute.name,
          path: 'quran/chapter/:id',
        ),
      ];
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [QuranPage]
class QuranRoute extends PageRouteInfo<void> {
  const QuranRoute({List<PageRouteInfo>? children})
      : super(
          QuranRoute.name,
          path: 'quran',
          initialChildren: children,
        );

  static const String name = 'QuranRoute';
}

/// generated route for
/// [ChapterPage]
class ChapterRoute extends PageRouteInfo<ChapterRouteArgs> {
  ChapterRoute({
    Key? key,
    required int id,
  }) : super(
          ChapterRoute.name,
          path: 'quran/chapter/:id',
          args: ChapterRouteArgs(
            key: key,
            id: id,
          ),
          rawPathParams: {'id': id},
        );

  static const String name = 'ChapterRoute';
}

class ChapterRouteArgs {
  const ChapterRouteArgs({
    this.key,
    required this.id,
  });

  final Key? key;

  final int id;

  @override
  String toString() {
    return 'ChapterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [EmptyRouterPage]
class AboutDrawerRoute extends PageRouteInfo<void> {
  const AboutDrawerRoute({List<PageRouteInfo>? children})
      : super(
          AboutDrawerRoute.name,
          path: 'aboutDrawerRoute',
          initialChildren: children,
        );

  static const String name = 'AboutDrawerRoute';
}

/// generated route for
/// [AboutPage]
class AboutRoute extends PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: 'about',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [LicensesPage]
class LicensesRoute extends PageRouteInfo<void> {
  const LicensesRoute()
      : super(
          LicensesRoute.name,
          path: 'licenses',
        );

  static const String name = 'LicensesRoute';
}

/// generated route for
/// [LicensesDetailPage]
class LicensesDetailRoute extends PageRouteInfo<LicensesDetailRouteArgs> {
  LicensesDetailRoute({
    Key? key,
    required String packageName,
    required List<LicenseEntry> licenseEntries,
  }) : super(
          LicensesDetailRoute.name,
          path: 'lisenses-detail',
          args: LicensesDetailRouteArgs(
            key: key,
            packageName: packageName,
            licenseEntries: licenseEntries,
          ),
        );

  static const String name = 'LicensesDetailRoute';
}

class LicensesDetailRouteArgs {
  const LicensesDetailRouteArgs({
    this.key,
    required this.packageName,
    required this.licenseEntries,
  });

  final Key? key;

  final String packageName;

  final List<LicenseEntry> licenseEntries;

  @override
  String toString() {
    return 'LicensesDetailRouteArgs{key: $key, packageName: $packageName, licenseEntries: $licenseEntries}';
  }
}
