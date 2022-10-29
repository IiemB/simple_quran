// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapters.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chapters _$$_ChaptersFromJson(Map<String, dynamic> json) => _$_Chapters(
      chapters: (json['chapters'] as List<dynamic>?)
          ?.map((e) => Chapter.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ChaptersToJson(_$_Chapters instance) =>
    <String, dynamic>{
      'chapters': instance.chapters,
    };
