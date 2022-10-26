import 'package:simple_quran/features/settings/data/data.dart';

abstract class SettingsLocalDatasources {
  Future<SettingsModel> loadSettings();
  Future<void> saveSettings(SettingsModel settingsModel);
}
