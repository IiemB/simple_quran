import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppThemes {
  light(
    themeName: 'Light',
    themeMode: ThemeMode.light,
  ),
  dark(
    themeName: 'Dark',
    themeMode: ThemeMode.dark,
  ),
  darkAmoled(
    themeName: 'Dark Amoled',
    themeMode: ThemeMode.dark,
  ),
  ;

  const AppThemes({required this.themeName, required this.themeMode});

  final String themeName;
  final ThemeMode themeMode;
}

const _useMaterial3 = true;
final _fonFamily = GoogleFonts.openSans().fontFamily;

final _lightTheme = FlexThemeData.light(
  scheme: FlexScheme.deepBlue,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 20,
  appBarOpacity: 0.95,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 20,
    blendOnColors: false,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: _useMaterial3,
  fontFamily: _fonFamily,
);

final _darkTheme = FlexThemeData.dark(
  scheme: FlexScheme.deepBlue,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarOpacity: 0.90,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
  ),
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: _useMaterial3,
  fontFamily: _fonFamily,
);

final _darkAmoledTheme = FlexThemeData.dark(
  scheme: FlexScheme.deepBlue,
  surfaceMode: FlexSurfaceMode.highScaffoldLowSurface,
  blendLevel: 15,
  appBarOpacity: 0.90,
  subThemesData: const FlexSubThemesData(
    blendOnLevel: 30,
  ),
  darkIsTrueBlack: true,
  visualDensity: FlexColorScheme.comfortablePlatformDensity,
  useMaterial3: _useMaterial3,
  fontFamily: _fonFamily,
);

extension AppThemseExtension on AppThemes {
  ThemeData get themeData {
    switch (this) {
      case AppThemes.light:
        return _lightTheme;
      case AppThemes.dark:
        return _darkTheme;
      case AppThemes.darkAmoled:
        return _darkAmoledTheme;
    }
  }
}
