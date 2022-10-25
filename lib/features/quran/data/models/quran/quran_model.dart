import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'quran_model.freezed.dart';
part 'quran_model.g.dart';

@freezed
class QuranModel with _$QuranModel {
  factory QuranModel({
    required List<SurahModel> surahs,
    required QuranEditionModel edition,
  }) = _QuranModel;

  factory QuranModel.fromJson(Map<String, dynamic> json) =>
      _$QuranModelFromJson(json);
}
