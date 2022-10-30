import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/core/core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

class MyApp extends StatelessWidget {
  final SettingsModel? settings;

  const MyApp({super.key, this.settings});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 846),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => SettingsCubit(initial: settings)),
          BlocProvider(
            create: (context) => AboutCubit()..getAppInfo(),
            lazy: false,
          ),
          BlocProvider(
            create: (context) => LicenseCubit()..getLicense(),
            lazy: false,
          ),
        ],
        child: BlocBuilder<SettingsCubit, SettingsModel>(
          buildWhen: (previous, current) =>
              previous.appThemes != current.appThemes,
          builder: (context, state) {
            return MaterialApp.router(
              theme: state.appThemes.themeData.modified,
              routerDelegate: AutoRouterDelegate(
                appRoutes.router,
              ),
              routeInformationProvider: appRoutes.router.routeInfoProvider(),
              routeInformationParser: appRoutes.router.defaultRouteParser(),
            );
          },
        ),
      ),
    );
  }
}
