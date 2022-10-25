// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../common/shared_prefs.dart' as _i7;
import '../features/quran/data/datasources/quran_remote_datasources_impl.dart'
    as _i5;
import '../features/quran/data/repositories/quran_repositories_impl.dart'
    as _i6;
import '../features/quran/quran.dart' as _i4;
import 'core.dart' as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.AppRoutes>(() => _i3.AppRoutes());
  gh.lazySingleton<_i4.QuranRemoteDatasources>(
      () => _i5.QuranRemoteDatasourcesImpl());
  gh.lazySingleton<_i4.QuranRepositories>(
      () => _i6.QuranRepositoriesImpl(get<_i4.QuranRemoteDatasources>()));
  gh.lazySingleton<_i7.SharedPrefs>(() => _i7.SharedPrefs());
  return get;
}
