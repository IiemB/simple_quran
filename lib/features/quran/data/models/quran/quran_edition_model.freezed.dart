// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'quran_edition_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuranEditionModel _$QuranEditionModelFromJson(Map<String, dynamic> json) {
  return _QuranEditionModel.fromJson(json);
}

/// @nodoc
mixin _$QuranEditionModel {
  String get identifier => throw _privateConstructorUsedError;
  String get language => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get englishName => throw _privateConstructorUsedError;
  String get format => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuranEditionModelCopyWith<QuranEditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuranEditionModelCopyWith<$Res> {
  factory $QuranEditionModelCopyWith(
          QuranEditionModel value, $Res Function(QuranEditionModel) then) =
      _$QuranEditionModelCopyWithImpl<$Res, QuranEditionModel>;
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type});
}

/// @nodoc
class _$QuranEditionModelCopyWithImpl<$Res, $Val extends QuranEditionModel>
    implements $QuranEditionModelCopyWith<$Res> {
  _$QuranEditionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QuranEditionModelCopyWith<$Res>
    implements $QuranEditionModelCopyWith<$Res> {
  factory _$$_QuranEditionModelCopyWith(_$_QuranEditionModel value,
          $Res Function(_$_QuranEditionModel) then) =
      __$$_QuranEditionModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String identifier,
      String language,
      String name,
      String englishName,
      String format,
      String type});
}

/// @nodoc
class __$$_QuranEditionModelCopyWithImpl<$Res>
    extends _$QuranEditionModelCopyWithImpl<$Res, _$_QuranEditionModel>
    implements _$$_QuranEditionModelCopyWith<$Res> {
  __$$_QuranEditionModelCopyWithImpl(
      _$_QuranEditionModel _value, $Res Function(_$_QuranEditionModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? identifier = null,
    Object? language = null,
    Object? name = null,
    Object? englishName = null,
    Object? format = null,
    Object? type = null,
  }) {
    return _then(_$_QuranEditionModel(
      identifier: null == identifier
          ? _value.identifier
          : identifier // ignore: cast_nullable_to_non_nullable
              as String,
      language: null == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      englishName: null == englishName
          ? _value.englishName
          : englishName // ignore: cast_nullable_to_non_nullable
              as String,
      format: null == format
          ? _value.format
          : format // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuranEditionModel implements _QuranEditionModel {
  _$_QuranEditionModel(
      {required this.identifier,
      required this.language,
      required this.name,
      required this.englishName,
      required this.format,
      required this.type});

  factory _$_QuranEditionModel.fromJson(Map<String, dynamic> json) =>
      _$$_QuranEditionModelFromJson(json);

  @override
  final String identifier;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final String format;
  @override
  final String type;

  @override
  String toString() {
    return 'QuranEditionModel(identifier: $identifier, language: $language, name: $name, englishName: $englishName, format: $format, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuranEditionModel &&
            (identical(other.identifier, identifier) ||
                other.identifier == identifier) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.englishName, englishName) ||
                other.englishName == englishName) &&
            (identical(other.format, format) || other.format == format) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, identifier, language, name, englishName, format, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuranEditionModelCopyWith<_$_QuranEditionModel> get copyWith =>
      __$$_QuranEditionModelCopyWithImpl<_$_QuranEditionModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuranEditionModelToJson(
      this,
    );
  }
}

abstract class _QuranEditionModel implements QuranEditionModel {
  factory _QuranEditionModel(
      {required final String identifier,
      required final String language,
      required final String name,
      required final String englishName,
      required final String format,
      required final String type}) = _$_QuranEditionModel;

  factory _QuranEditionModel.fromJson(Map<String, dynamic> json) =
      _$_QuranEditionModel.fromJson;

  @override
  String get identifier;
  @override
  String get language;
  @override
  String get name;
  @override
  String get englishName;
  @override
  String get format;
  @override
  String get type;
  @override
  @JsonKey(ignore: true)
  _$$_QuranEditionModelCopyWith<_$_QuranEditionModel> get copyWith =>
      throw _privateConstructorUsedError;
}
