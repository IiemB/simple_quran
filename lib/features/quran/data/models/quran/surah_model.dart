import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'surah_model.freezed.dart';
part 'surah_model.g.dart';

@freezed
class SurahModel with _$SurahModel {
  factory SurahModel({
    required int number,
    required String name,
    required String englishName,
    required String englishNameTranslation,
    required String revelationType,
    required List<AyahModel> ayahs,
  }) = _SurahModel;

  factory SurahModel.fromJson(Map<String, dynamic> json) =>
      _$SurahModelFromJson(json);
}
