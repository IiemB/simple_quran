import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/core/core.dart';
import 'package:simple_quran/features/settings/settings.dart';

final _repositories = getIt<SettingsRepositories>();

class SettingsUsecases {
  const SettingsUsecases._();

  static const loadSettings = $LoadSettings();
  static const saveSetting = $SaveSetting();
}

class $LoadSettings {
  const $LoadSettings();

  Future<Either<Failure, SettingsModel>> call() => _repositories.loadSettings();
}

class $SaveSetting {
  const $SaveSetting();

  Future<Either<Failure, void>> call(SettingsModel settingsModel) =>
      _repositories.saveSetting(settingsModel);
}
