// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Verses _$$_VersesFromJson(Map<String, dynamic> json) => _$_Verses(
      verses: (json['verses'] as List<dynamic>?)
          ?.map((e) => Verse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_VersesToJson(_$_Verses instance) => <String, dynamic>{
      'verses': instance.verses,
    };
