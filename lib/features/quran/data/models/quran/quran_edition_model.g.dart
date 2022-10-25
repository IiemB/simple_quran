// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_edition_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuranEditionModel _$$_QuranEditionModelFromJson(Map<String, dynamic> json) =>
    _$_QuranEditionModel(
      identifier: json['identifier'] as String,
      language: json['language'] as String,
      name: json['name'] as String,
      englishName: json['englishName'] as String,
      format: json['format'] as String,
      type: json['type'] as String,
    );

Map<String, dynamic> _$$_QuranEditionModelToJson(
        _$_QuranEditionModel instance) =>
    <String, dynamic>{
      'identifier': instance.identifier,
      'language': instance.language,
      'name': instance.name,
      'englishName': instance.englishName,
      'format': instance.format,
      'type': instance.type,
    };
