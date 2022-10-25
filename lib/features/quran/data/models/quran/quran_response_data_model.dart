import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:simple_quran/features/quran/quran.dart';

part 'quran_response_data_model.freezed.dart';
part 'quran_response_data_model.g.dart';

@freezed
class QuranResponeDataModel with _$QuranResponeDataModel {
  factory QuranResponeDataModel({
    int? code,
    String? status,
    QuranModel? data,
  }) = _QuranResponeDataModel;

  factory QuranResponeDataModel.fromJson(Map<String, dynamic> json) =>
      _$QuranResponeDataModelFromJson(json);
}
