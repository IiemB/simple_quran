// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Verse _$$_VerseFromJson(Map<String, dynamic> json) => _$_Verse(
      id: json['id'] as int?,
      verseKey: json['verse_key'] as String?,
      textUthmani: json['text_uthmani'] as String?,
      textIndopak: json['text_indopak'] as String?,
    );

Map<String, dynamic> _$$_VerseToJson(_$_Verse instance) => <String, dynamic>{
      'id': instance.id,
      'verse_key': instance.verseKey,
      'text_uthmani': instance.textUthmani,
      'text_indopak': instance.textIndopak,
    };
