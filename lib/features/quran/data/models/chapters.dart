// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'chapters.freezed.dart';
part 'chapters.g.dart';

@freezed
class Chapters with _$Chapters {
  factory Chapters({
    @JsonKey(name: 'chapters') List<Chapter>? chapters,
  }) = _Chapters;

  factory Chapters.fromJson(Map<String, dynamic> json) =>
      _$ChaptersFromJson(json);
}
