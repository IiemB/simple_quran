import 'package:freezed_annotation/freezed_annotation.dart';

part 'ayah_model.freezed.dart';
part 'ayah_model.g.dart';

@freezed
class AyahModel with _$AyahModel {
  factory AyahModel({
    required int number,
    required String text,
    required int numberInSurah,
    required int juz,
    required int manzil,
    required int page,
    required int ruku,
    required int hizbQuarter,
  }) = _AyahModel;

  factory AyahModel.fromJson(Map<String, dynamic> json) =>
      _$AyahModelFromJson(json);
}
