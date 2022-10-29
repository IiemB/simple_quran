// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verse.freezed.dart';
part 'verse.g.dart';

@freezed
class Verse with _$Verse {
  factory Verse({
    int? id,
    @JsonKey(name: 'verse_key') String? verseKey,
    @JsonKey(name: 'text_uthmani') String? textUthmani,
    @JsonKey(name: 'text_indopak') String? textIndopak,
  }) = _Verse;

  factory Verse.fromJson(Map<String, dynamic> json) => _$VerseFromJson(json);
}
