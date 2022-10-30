// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'translated_name.freezed.dart';
part 'translated_name.g.dart';

@freezed
class TranslatedName with _$TranslatedName {
  factory TranslatedName({
    @JsonKey(name: 'language_name') String? languageName,
    String? name,
  }) = _TranslatedName;

  factory TranslatedName.fromJson(Map<String, dynamic> json) =>
      _$TranslatedNameFromJson(json);
}
