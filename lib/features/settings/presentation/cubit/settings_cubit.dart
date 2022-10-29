import 'package:bloc/bloc.dart';
import 'package:simple_quran/features/settings/settings.dart';

class SettingsCubit extends Cubit<SettingsModel> {
  final SettingsModel? initial;

  SettingsCubit({this.initial}) : super(initial ?? SettingsModel());

  void updateSettings(SettingsModel settingsModel) async {
    emit(settingsModel);

    await SettingsUsecases.saveSetting(settingsModel);
  }
}
