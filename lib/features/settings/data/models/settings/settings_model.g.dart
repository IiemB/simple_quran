// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SettingsModel _$$_SettingsModelFromJson(Map<String, dynamic> json) =>
    _$_SettingsModel(
      appThemes: $enumDecodeNullable(_$AppThemesEnumMap, json['appThemes']) ??
          AppThemes.light,
      textSize: (json['textSize'] as num?)?.toDouble() ?? 24,
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'appThemes': _$AppThemesEnumMap[instance.appThemes]!,
      'textSize': instance.textSize,
    };

const _$AppThemesEnumMap = {
  AppThemes.light: 'light',
  AppThemes.dark: 'dark',
  AppThemes.darkAmoled: 'darkAmoled',
};
