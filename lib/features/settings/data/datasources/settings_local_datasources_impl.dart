import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:simple_quran/common/common.dart';
import 'package:simple_quran/features/settings/settings.dart';
import 'package:simple_quran/utils/utils.dart';

@LazySingleton(as: SettingsLocalDatasources)
class SettingsLocalDatasourcesImpl implements SettingsLocalDatasources {
  @override
  Future<SettingsModel> loadSettings() async {
    try {
      if (kIsWeb) {
        return SettingsModel();
      }

      final cachedJson = await JsonCacheManager.getJson(SETTINGS);

      if (cachedJson == null) {
        return SettingsModel();
      }

      return SettingsModel.fromJson(cachedJson);
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<void> saveSettings(SettingsModel settingsModel) async {
    try {
      if (kIsWeb) {
        return;
      }

      await JsonCacheManager.saveJson(SETTINGS, settingsModel.toJson());
    } catch (e) {
      rethrow;
    }
  }
}
