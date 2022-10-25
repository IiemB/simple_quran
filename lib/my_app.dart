import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 846),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, _) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => QuranBloc(),
          ),
        ],
        child: MaterialApp.router(
          routerDelegate: AutoRouterDelegate(
            appRoutes.router,
          ),
          routeInformationProvider: appRoutes.router.routeInfoProvider(),
          routeInformationParser: appRoutes.router.defaultRouteParser(),
        ),
      ),
    );
  }
}
