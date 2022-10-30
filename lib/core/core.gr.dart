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
      final args = routeData.argsAs<ChapterRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: ChapterPage(
          key: args.key,
          chapter: args.chapter,
        ),
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
        ),
        RouteConfig(
          ChapterRoute.name,
          path: 'chapter',
        ),
        RouteConfig(
          AboutRoute.name,
          path: 'about',
        ),
        RouteConfig(
          LicensesRoute.name,
          path: 'lisenses',
        ),
        RouteConfig(
          LicensesDetailRoute.name,
          path: 'lisenses-detail',
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
  const QuranRoute()
      : super(
          QuranRoute.name,
          path: 'quran',
        );

  static const String name = 'QuranRoute';
}

/// generated route for
/// [ChapterPage]
class ChapterRoute extends PageRouteInfo<ChapterRouteArgs> {
  ChapterRoute({
    Key? key,
    required Chapter chapter,
  }) : super(
          ChapterRoute.name,
          path: 'chapter',
          args: ChapterRouteArgs(
            key: key,
            chapter: chapter,
          ),
        );

  static const String name = 'ChapterRoute';
}

class ChapterRouteArgs {
  const ChapterRouteArgs({
    this.key,
    required this.chapter,
  });

  final Key? key;

  final Chapter chapter;

  @override
  String toString() {
    return 'ChapterRouteArgs{key: $key, chapter: $chapter}';
  }
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
          path: 'lisenses',
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
