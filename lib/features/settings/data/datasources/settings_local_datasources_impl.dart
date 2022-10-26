import 'dart:convert';
import 'dart:io';

import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

@LazySingleton(as: SettingsLocalDatasources)
class SettingsLocalDatasourcesImpl implements SettingsLocalDatasources {
  @override
  Future<SettingsModel> loadSettings() async {
    try {
      final cacheDirectory = await getTemporaryDirectory();

      final settingsJsonCachePath = '${cacheDirectory.path}/$SETTINGS.json';

      final settingsJsonCacheFile = File(settingsJsonCachePath);

      if (await settingsJsonCacheFile.exists()) {
        final settingsJsonString = await settingsJsonCacheFile.readAsString();

        final settingsJson =
            jsonDecode(settingsJsonString) as Map<String, dynamic>;

        final settings = SettingsModel.fromJson(settingsJson);

        return settings;
      }

      return SettingsModel();
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveSettings(SettingsModel settingsModel) async {
    try {
      final cacheDirectory = await getTemporaryDirectory();

      final settingsJsonCachePath = '${cacheDirectory.path}/$SETTINGS.json';

      final settingsJsonCacheFile = File(settingsJsonCachePath);

      await settingsJsonCacheFile.writeAsString(
        const JsonEncoder.withIndent('  ').convert(settingsModel.toJson()),
      );
    } catch (e) {
      rethrow;
    }
  }
}
