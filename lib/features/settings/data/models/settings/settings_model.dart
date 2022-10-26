import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/settings/settings.dart';

part 'settings_model.freezed.dart';
part 'settings_model.g.dart';

@freezed
class SettingsModel with _$SettingsModel {
  factory SettingsModel({
    @Default(AppThemes.light) AppThemes appThemes,
    @Default(24) double textSize,
  }) = _SettingsModel;

  factory SettingsModel.fromJson(Map<String, dynamic> json) =>
      _$SettingsModelFromJson(json);
}
