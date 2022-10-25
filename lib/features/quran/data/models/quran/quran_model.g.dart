// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuranModel _$$_QuranModelFromJson(Map<String, dynamic> json) =>
    _$_QuranModel(
      surahs: (json['surahs'] as List<dynamic>)
          .map((e) => SurahModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      edition:
          QuranEditionModel.fromJson(json['edition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuranModelToJson(_$_QuranModel instance) =>
    <String, dynamic>{
      'surahs': instance.surahs,
      'edition': instance.edition,
    };
