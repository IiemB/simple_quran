// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chapter.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chapter _$$_ChapterFromJson(Map<String, dynamic> json) => _$_Chapter(
      id: json['id'] as int?,
      revelationPlace: json['revelation_place'] as String?,
      revelationOrder: json['revelation_order'] as int?,
      bismillahPre: json['bismillah_pre'] as bool?,
      nameSimple: json['name_simple'] as String?,
      nameComplex: json['name_complex'] as String?,
      nameArabic: json['name_arabic'] as String?,
      versesCount: json['verses_count'] as int?,
      pages: (json['pages'] as List<dynamic>?)?.map((e) => e as int).toList(),
      translatedName: json['translated_name'] == null
          ? null
          : TranslatedName.fromJson(
              json['translated_name'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ChapterToJson(_$_Chapter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'revelation_place': instance.revelationPlace,
      'revelation_order': instance.revelationOrder,
      'bismillah_pre': instance.bismillahPre,
      'name_simple': instance.nameSimple,
      'name_complex': instance.nameComplex,
      'name_arabic': instance.nameArabic,
      'verses_count': instance.versesCount,
      'pages': instance.pages,
      'translated_name': instance.translatedName,
    };
