// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quran_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuranModel _$QuranModelFromJson(Map<String, dynamic> json) {
  return _QuranModel.fromJson(json);
}

/// @nodoc
mixin _$QuranModel {
  List<SurahModel> get surahs => throw _privateConstructorUsedError;
  QuranEditionModel get edition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranModelCopyWith<QuranModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranModelCopyWith<$Res> {
  factory $QuranModelCopyWith(
          QuranModel value, $Res Function(QuranModel) then) =
      _$QuranModelCopyWithImpl<$Res, QuranModel>;
  @useResult
  $Res call({List<SurahModel> surahs, QuranEditionModel edition});

  $QuranEditionModelCopyWith<$Res> get edition;
}

/// @nodoc
class _$QuranModelCopyWithImpl<$Res, $Val extends QuranModel>
    implements $QuranModelCopyWith<$Res> {
  _$QuranModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = null,
    Object? edition = null,
  }) {
    return _then(_value.copyWith(
      surahs: null == surahs
          ? _value.surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<SurahModel>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as QuranEditionModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuranEditionModelCopyWith<$Res> get edition {
    return $QuranEditionModelCopyWith<$Res>(_value.edition, (value) {
      return _then(_value.copyWith(edition: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuranModelCopyWith<$Res>
    implements $QuranModelCopyWith<$Res> {
  factory _$$_QuranModelCopyWith(
          _$_QuranModel value, $Res Function(_$_QuranModel) then) =
      __$$_QuranModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SurahModel> surahs, QuranEditionModel edition});

  @override
  $QuranEditionModelCopyWith<$Res> get edition;
}

/// @nodoc
class __$$_QuranModelCopyWithImpl<$Res>
    extends _$QuranModelCopyWithImpl<$Res, _$_QuranModel>
    implements _$$_QuranModelCopyWith<$Res> {
  __$$_QuranModelCopyWithImpl(
      _$_QuranModel _value, $Res Function(_$_QuranModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? surahs = null,
    Object? edition = null,
  }) {
    return _then(_$_QuranModel(
      surahs: null == surahs
          ? _value._surahs
          : surahs // ignore: cast_nullable_to_non_nullable
              as List<SurahModel>,
      edition: null == edition
          ? _value.edition
          : edition // ignore: cast_nullable_to_non_nullable
              as QuranEditionModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranModel implements _QuranModel {
  _$_QuranModel({required final List<SurahModel> surahs, required this.edition})
      : _surahs = surahs;

  factory _$_QuranModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuranModelFromJson(json);

  final List<SurahModel> _surahs;
  @override
  List<SurahModel> get surahs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_surahs);
  }

  @override
  final QuranEditionModel edition;

  @override
  String toString() {
    return 'QuranModel(surahs: $surahs, edition: $edition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranModel &&
            const DeepCollectionEquality().equals(other._surahs, _surahs) &&
            (identical(other.edition, edition) || other.edition == edition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_surahs), edition);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranModelCopyWith<_$_QuranModel> get copyWith =>
      __$$_QuranModelCopyWithImpl<_$_QuranModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranModelToJson(
      this,
    );
  }
}

abstract class _QuranModel implements QuranModel {
  factory _QuranModel(
      {required final List<SurahModel> surahs,
      required final QuranEditionModel edition}) = _$_QuranModel;

  factory _QuranModel.fromJson(Map<String, dynamic> json) =
      _$_QuranModel.fromJson;

  @override
  List<SurahModel> get surahs;
  @override
  QuranEditionModel get edition;
  @override
  @JsonKey(ignore: true)
  _$$_QuranModelCopyWith<_$_QuranModel> get copyWith =>
      throw _privateConstructorUsedError;
}
