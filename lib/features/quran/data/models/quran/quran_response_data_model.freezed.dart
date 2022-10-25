// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quran_response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuranResponeDataModel _$QuranResponeDataModelFromJson(
    Map<String, dynamic> json) {
  return _QuranResponeDataModel.fromJson(json);
}

/// @nodoc
mixin _$QuranResponeDataModel {
  int? get code => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  QuranModel? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranResponeDataModelCopyWith<QuranResponeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranResponeDataModelCopyWith<$Res> {
  factory $QuranResponeDataModelCopyWith(QuranResponeDataModel value,
          $Res Function(QuranResponeDataModel) then) =
      _$QuranResponeDataModelCopyWithImpl<$Res, QuranResponeDataModel>;
  @useResult
  $Res call({int? code, String? status, QuranModel? data});

  $QuranModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$QuranResponeDataModelCopyWithImpl<$Res,
        $Val extends QuranResponeDataModel>
    implements $QuranResponeDataModelCopyWith<$Res> {
  _$QuranResponeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuranModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $QuranModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuranResponeDataModelCopyWith<$Res>
    implements $QuranResponeDataModelCopyWith<$Res> {
  factory _$$_QuranResponeDataModelCopyWith(_$_QuranResponeDataModel value,
          $Res Function(_$_QuranResponeDataModel) then) =
      __$$_QuranResponeDataModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? code, String? status, QuranModel? data});

  @override
  $QuranModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_QuranResponeDataModelCopyWithImpl<$Res>
    extends _$QuranResponeDataModelCopyWithImpl<$Res, _$_QuranResponeDataModel>
    implements _$$_QuranResponeDataModelCopyWith<$Res> {
  __$$_QuranResponeDataModelCopyWithImpl(_$_QuranResponeDataModel _value,
      $Res Function(_$_QuranResponeDataModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? status = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_QuranResponeDataModel(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as QuranModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranResponeDataModel implements _QuranResponeDataModel {
  _$_QuranResponeDataModel({this.code, this.status, this.data});

  factory _$_QuranResponeDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuranResponeDataModelFromJson(json);

  @override
  final int? code;
  @override
  final String? status;
  @override
  final QuranModel? data;

  @override
  String toString() {
    return 'QuranResponeDataModel(code: $code, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranResponeDataModel &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, status, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranResponeDataModelCopyWith<_$_QuranResponeDataModel> get copyWith =>
      __$$_QuranResponeDataModelCopyWithImpl<_$_QuranResponeDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranResponeDataModelToJson(
      this,
    );
  }
}

abstract class _QuranResponeDataModel implements QuranResponeDataModel {
  factory _QuranResponeDataModel(
      {final int? code,
      final String? status,
      final QuranModel? data}) = _$_QuranResponeDataModel;

  factory _QuranResponeDataModel.fromJson(Map<String, dynamic> json) =
      _$_QuranResponeDataModel.fromJson;

  @override
  int? get code;
  @override
  String? get status;
  @override
  QuranModel? get data;
  @override
  @JsonKey(ignore: true)
  _$$_QuranResponeDataModelCopyWith<_$_QuranResponeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
