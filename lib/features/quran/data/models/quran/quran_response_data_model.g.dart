// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quran_response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuranResponeDataModel _$$_QuranResponeDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuranResponeDataModel(
      code: json['code'] as int?,
      status: json['status'] as String?,
      data: json['data'] == null
          ? null
          : QuranModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QuranResponeDataModelToJson(
        _$_QuranResponeDataModel instance) =>
    <String, dynamic>{
      'code': instance.code,
      'status': instance.status,
      'data': instance.data,
    };
