// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:auto_route/empty_router_widgets.dart' as _i3;
import 'package:flutter/cupertino.dart' as _i7;
import 'package:flutter/foundation.dart' as _i8;
import 'package:flutter/material.dart' as _i6;

import '../features/about/about.dart' as _i4;
import '../features/quran/quran.dart' as _i2;
import '../features/splash/splash.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    QuranRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.QuranPage(),
      );
    },
    ChapterRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ChapterRouteArgs>(
          orElse: () => ChapterRouteArgs(id: pathParams.getInt('id')));
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i2.ChapterPage(
          key: args.key,
          id: args.id,
        ),
      );
    },
    AboutDrawerRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.EmptyRouterPage(),
      );
    },
    AboutRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.AboutPage(),
      );
    },
    LicensesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.LicensesPage(),
      );
    },
    LicensesDetailRoute.name: (routeData) {
      final args = routeData.argsAs<LicensesDetailRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i4.LicensesDetailPage(
          key: args.key,
          packageName: args.packageName,
          licenseEntries: args.licenseEntries,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          QuranRoute.name,
          path: 'quran',
          children: [
            _i5.RouteConfig(
              AboutDrawerRoute.name,
              path: 'about',
              parent: QuranRoute.name,
              children: [
                _i5.RouteConfig(
                  AboutRoute.name,
                  path: '',
                  parent: AboutDrawerRoute.name,
                ),
                _i5.RouteConfig(
                  LicensesRoute.name,
                  path: 'licenses',
                  parent: AboutDrawerRoute.name,
                ),
                _i5.RouteConfig(
                  LicensesDetailRoute.name,
                  path: 'lisenses-detail',
                  parent: AboutDrawerRoute.name,
                ),
              ],
            )
          ],
        ),
        _i5.RouteConfig(
          'chapter/:id#redirect',
          path: 'chapter/:id',
          redirectTo: 'quran/chapter/:id',
          fullMatch: true,
        ),
        _i5.RouteConfig(
          ChapterRoute.name,
          path: 'quran/chapter/:id',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i5.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.QuranPage]
class QuranRoute extends _i5.PageRouteInfo<void> {
  const QuranRoute({List<_i5.PageRouteInfo>? children})
      : super(
          QuranRoute.name,
          path: 'quran',
          initialChildren: children,
        );

  static const String name = 'QuranRoute';
}

/// generated route for
/// [_i2.ChapterPage]
class ChapterRoute extends _i5.PageRouteInfo<ChapterRouteArgs> {
  ChapterRoute({
    _i7.Key? key,
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

  final _i7.Key? key;

  final int id;

  @override
  String toString() {
    return 'ChapterRouteArgs{key: $key, id: $id}';
  }
}

/// generated route for
/// [_i3.EmptyRouterPage]
class AboutDrawerRoute extends _i5.PageRouteInfo<void> {
  const AboutDrawerRoute({List<_i5.PageRouteInfo>? children})
      : super(
          AboutDrawerRoute.name,
          path: 'about',
          initialChildren: children,
        );

  static const String name = 'AboutDrawerRoute';
}

/// generated route for
/// [_i4.AboutPage]
class AboutRoute extends _i5.PageRouteInfo<void> {
  const AboutRoute()
      : super(
          AboutRoute.name,
          path: '',
        );

  static const String name = 'AboutRoute';
}

/// generated route for
/// [_i4.LicensesPage]
class LicensesRoute extends _i5.PageRouteInfo<void> {
  const LicensesRoute()
      : super(
          LicensesRoute.name,
          path: 'licenses',
        );

  static const String name = 'LicensesRoute';
}

/// generated route for
/// [_i4.LicensesDetailPage]
class LicensesDetailRoute extends _i5.PageRouteInfo<LicensesDetailRouteArgs> {
  LicensesDetailRoute({
    _i7.Key? key,
    required String packageName,
    required List<_i8.LicenseEntry> licenseEntries,
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

  final _i7.Key? key;

  final String packageName;

  final List<_i8.LicenseEntry> licenseEntries;

  @override
  String toString() {
    return 'LicensesDetailRouteArgs{key: $key, packageName: $packageName, licenseEntries: $licenseEntries}';
  }
}
