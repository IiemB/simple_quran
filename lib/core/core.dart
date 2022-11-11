import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/core/core.config.dart';
import 'package:simple_quran/features/about/about.dart';
import 'package:simple_quran/features/quran/quran.dart';
import 'package:simple_quran/features/splash/splash.dart';
import 'package:simple_quran/utils/utils.dart';
import 'package:simple_quran/core/core.gr.dart';

export 'package:simple_quran/core/core.gr.dart';

part 'app_routes.dart';

final getIt = GetIt.instance;

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
