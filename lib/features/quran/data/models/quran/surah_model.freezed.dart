// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'surah_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurahModel _$SurahModelFromJson(Map<String, dynamic> json) {
  return _SurahModel.fromJson(json);
}

/// @nodoc
mixin _$SurahModel {
  int get number => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get englishNameTranslation => throw _privateConstructorUsedError;
  String get revelationType => throw _privateConstructorUsedError;
  List<AyahModel> get ayahs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurahModelCopyWith<SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurahModelCopyWith<$Res> {
  factory $SurahModelCopyWith(
          SurahModel value, $Res Function(SurahModel) then) =
      _$SurahModelCopyWithImpl<$Res, SurahModel>;
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      List<AyahModel> ayahs});
}

/// @nodoc
class _$SurahModelCopyWithImpl<$Res, $Val extends SurahModel>
    implements $SurahModelCopyWith<$Res> {
  _$SurahModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      ayahs: null == ayahs
          ? _value.ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<AyahModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SurahModelCopyWith<$Res>
    implements $SurahModelCopyWith<$Res> {
  factory _$$_SurahModelCopyWith(
          _$_SurahModel value, $Res Function(_$_SurahModel) then) =
      __$$_SurahModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String name,
      String englishName,
      String englishNameTranslation,
      String revelationType,
      List<AyahModel> ayahs});
}

/// @nodoc
class __$$_SurahModelCopyWithImpl<$Res>
    extends _$SurahModelCopyWithImpl<$Res, _$_SurahModel>
    implements _$$_SurahModelCopyWith<$Res> {
  __$$_SurahModelCopyWithImpl(
      _$_SurahModel _value, $Res Function(_$_SurahModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = null,
    Object? englishName = null,
    Object? englishNameTranslation = null,
    Object? revelationType = null,
    Object? ayahs = null,
  }) {
    return _then(_$_SurahModel(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      englishNameTranslation: null == englishNameTranslation
          ? _value.englishNameTranslation
          : englishNameTranslation // ignore: cast_nullable_to_non_nullable
              as String,
      revelationType: null == revelationType
          ? _value.revelationType
          : revelationType // ignore: cast_nullable_to_non_nullable
              as String,
      ayahs: null == ayahs
          ? _value._ayahs
          : ayahs // ignore: cast_nullable_to_non_nullable
              as List<AyahModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SurahModel implements _SurahModel {
  _$_SurahModel(
      {required this.number,
      required this.name,
      required this.englishName,
      required this.englishNameTranslation,
      required this.revelationType,
      required final List<AyahModel> ayahs})
      : _ayahs = ayahs;

  factory _$_SurahModel.fromJson(Map<String, dynamic> json) =>
      _$$_SurahModelFromJson(json);

  @override
  final int number;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String englishNameTranslation;
  @override
  final String revelationType;
  final List<AyahModel> _ayahs;
  @override
  List<AyahModel> get ayahs {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ayahs);
  }

  @override
  String toString() {
    return 'SurahModel(number: $number, name: $name, englishName: $englishName, englishNameTranslation: $englishNameTranslation, revelationType: $revelationType, ayahs: $ayahs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurahModel &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.englishNameTranslation, englishNameTranslation) ||
                other.englishNameTranslation == englishNameTranslation) &&
            (identical(other.revelationType, revelationType) ||
                other.revelationType == revelationType) &&
            const DeepCollectionEquality().equals(other._ayahs, _ayahs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      number,
      name,
      englishName,
      englishNameTranslation,
      revelationType,
      const DeepCollectionEquality().hash(_ayahs));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SurahModelCopyWith<_$_SurahModel> get copyWith =>
      __$$_SurahModelCopyWithImpl<_$_SurahModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurahModelToJson(
      this,
    );
  }
}

abstract class _SurahModel implements SurahModel {
  factory _SurahModel(
      {required final int number,
      required final String name,
      required final String englishName,
      required final String englishNameTranslation,
      required final String revelationType,
      required final List<AyahModel> ayahs}) = _$_SurahModel;

  factory _SurahModel.fromJson(Map<String, dynamic> json) =
      _$_SurahModel.fromJson;

  @override
  int get number;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get englishNameTranslation;
  @override
  String get revelationType;
  @override
  List<AyahModel> get ayahs;
  @override
  @JsonKey(ignore: true)
  _$$_SurahModelCopyWith<_$_SurahModel> get copyWith =>
      throw _privateConstructorUsedError;
}
