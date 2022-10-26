import 'package:dartz/dartz.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/settings/data/data.dart';

abstract class SettingsRepositories {
  Future<Either<Failure, SettingsModel>> loadSettings();
  Future<Either<Failure, void>> saveSetting(SettingsModel settingsModel);
}
