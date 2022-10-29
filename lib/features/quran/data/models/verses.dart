// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'verses.freezed.dart';
part 'verses.g.dart';

@freezed
class Verses with _$Verses {
  factory Verses({@JsonKey(name: 'verses') List<Verse>? verses}) = _Verses;

  factory Verses.fromJson(Map<String, dynamic> json) => _$VersesFromJson(json);
}
