// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/about/about.dart' as _i3;
import '../features/about/data/datasources/about_local_datasources_impl.dart'
    as _i4;
import '../features/about/data/repositories/about_repository_impl.dart' as _i5;
import '../features/quran/data/datasources/quran_remote_datasources_impl.dart'
    as _i8;
import '../features/quran/data/repositories/quran_repositories_impl.dart'
    as _i9;
import '../features/quran/quran.dart' as _i7;
import '../features/settings/data/datasources/settings_local_datasources_impl.dart'
    as _i11;
import '../features/settings/data/repositories/settings_repositories_impl.dart'
    as _i12;
import '../features/settings/settings.dart' as _i10;
import 'core.dart' as _i6; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i3.AboutLocalDatasources>(
      () => _i4.AboutLocalDatasourcesImpl());
  gh.lazySingleton<_i3.AboutRepository>(
      () => _i5.AboutRepositoryImpl(get<_i3.AboutLocalDatasources>()));
  gh.lazySingleton<_i6.AppRoutes>(() => _i6.AppRoutes());
  gh.lazySingleton<_i7.QuranRemoteDatasources>(
      () => _i8.QuranRemoteDatasourcesImpl());
  gh.lazySingleton<_i7.QuranRepositories>(
      () => _i9.QuranRepositoriesImpl(get<_i7.QuranRemoteDatasources>()));
  gh.lazySingleton<_i10.SettingsLocalDatasources>(
      () => _i11.SettingsLocalDatasourcesImpl());
  gh.lazySingleton<_i10.SettingsRepositories>(() =>
      _i12.SettingsRepositoriesImpl(get<_i10.SettingsLocalDatasources>()));
  return get;
}
