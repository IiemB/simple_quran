import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/failure.dart';
import 'package:simple_quran/features/settings/settings.dart';

@LazySingleton(as: SettingsRepositories)
class SettingsRepositoriesImpl implements SettingsRepositories {
  final SettingsLocalDatasources _settingsLocalDatasources;

  SettingsRepositoriesImpl(this._settingsLocalDatasources);
  @override
  Future<Either<Failure, SettingsModel>> loadSettings() async {
    try {
      final result = await _settingsLocalDatasources.loadSettings();

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }

  @override
  Future<Either<Failure, void>> saveSetting(
    SettingsModel settingsModel,
  ) async {
    try {
      final result =
          await _settingsLocalDatasources.saveSettings(settingsModel);

      return right(result);
    } catch (e) {
      return left(Failure(e.toString())..print());
    }
  }
}
