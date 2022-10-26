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
      final args = routeData.argsAs<QuranRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: QuranPage(
          key: args.key,
          quranModel: args.quranModel,
        ),
      );
    },
    SurahRoute.name: (routeData) {
      final args = routeData.argsAs<SurahRouteArgs>();
      return MaterialPageX<dynamic>(
        routeData: routeData,
        child: SurahPage(
          key: args.key,
          surahModel: args.surahModel,
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
          SurahRoute.name,
          path: 'surah',
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
class QuranRoute extends PageRouteInfo<QuranRouteArgs> {
  QuranRoute({
    Key? key,
    required QuranModel quranModel,
  }) : super(
          QuranRoute.name,
          path: 'quran',
          args: QuranRouteArgs(
            key: key,
            quranModel: quranModel,
          ),
        );

  static const String name = 'QuranRoute';
}

class QuranRouteArgs {
  const QuranRouteArgs({
    this.key,
    required this.quranModel,
  });

  final Key? key;

  final QuranModel quranModel;

  @override
  String toString() {
    return 'QuranRouteArgs{key: $key, quranModel: $quranModel}';
  }
}

/// generated route for
/// [SurahPage]
class SurahRoute extends PageRouteInfo<SurahRouteArgs> {
  SurahRoute({
    Key? key,
    required SurahModel surahModel,
  }) : super(
          SurahRoute.name,
          path: 'surah',
          args: SurahRouteArgs(
            key: key,
            surahModel: surahModel,
          ),
        );

  static const String name = 'SurahRoute';
}

class SurahRouteArgs {
  const SurahRouteArgs({
    this.key,
    required this.surahModel,
  });

  final Key? key;

  final SurahModel surahModel;

  @override
  String toString() {
    return 'SurahRouteArgs{key: $key, surahModel: $surahModel}';
  }
}
