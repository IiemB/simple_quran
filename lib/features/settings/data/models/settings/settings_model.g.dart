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
      quranEdition:
          $enumDecodeNullable(_$QuranEditionEnumMap, json['quranEdition']) ??
              QuranEdition.uthmani,
    );

Map<String, dynamic> _$$_SettingsModelToJson(_$_SettingsModel instance) =>
    <String, dynamic>{
      'appThemes': _$AppThemesEnumMap[instance.appThemes]!,
      'textSize': instance.textSize,
      'quranEdition': _$QuranEditionEnumMap[instance.quranEdition]!,
    };

const _$AppThemesEnumMap = {
  AppThemes.light: 'light',
  AppThemes.dark: 'dark',
  AppThemes.darkAmoled: 'darkAmoled',
};

const _$QuranEditionEnumMap = {
  QuranEdition.indopak: 'indopak',
  QuranEdition.uthmani: 'uthmani',
};
