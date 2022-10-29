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
