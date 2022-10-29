// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'chapter.freezed.dart';
part 'chapter.g.dart';

@freezed
class Chapter with _$Chapter {
  factory Chapter({
    int? id,
    @JsonKey(name: 'revelation_place') String? revelationPlace,
    @JsonKey(name: 'revelation_order') int? revelationOrder,
    @JsonKey(name: 'bismillah_pre') bool? bismillahPre,
    @JsonKey(name: 'name_simple') String? nameSimple,
    @JsonKey(name: 'name_complex') String? nameComplex,
    @JsonKey(name: 'name_arabic') String? nameArabic,
    @JsonKey(name: 'verses_count') int? versesCount,
    List<int>? pages,
    @JsonKey(name: 'translated_name') TranslatedName? translatedName,
  }) = _Chapter;

  factory Chapter.fromJson(Map<String, dynamic> json) =>
      _$ChapterFromJson(json);
}
