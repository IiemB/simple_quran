import 'package:bloc/bloc.dart';
import 'package:simple_quran/features/settings/domain/usecases/settings_usecases.dart';
import 'package:simple_quran/features/settings/settings.dart';

class SettingsCubit extends Cubit<SettingsModel> {
  SettingsCubit() : super(SettingsModel());

  void loadSettings() async {
    final savedSettings = await SettingsUsecases.loadSettings()
        .then((value) => value.fold((l) => null, (r) => r));

    if (savedSettings == null) {
      return;
    }

    emit(savedSettings);
  }

  void updateSettings(SettingsModel settingsModel) async {
    emit(settingsModel);

    await SettingsUsecases.saveSetting(settingsModel);
  }
}
