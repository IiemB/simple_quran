import 'package:freezed_annotation/freezed_annotation.dart';

part 'quran_edition_model.freezed.dart';
part 'quran_edition_model.g.dart';

@freezed
class QuranEditionModel with _$QuranEditionModel {
  factory QuranEditionModel({
    required String identifier,
    required String language,
    required String name,
    required String englishName,
    required String format,
    required String type,
  }) = _QuranEditionModel;

  factory QuranEditionModel.fromJson(Map<String, dynamic> json) =>
      _$QuranEditionModelFromJson(json);
}
