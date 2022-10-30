// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verse.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Verse _$VerseFromJson(Map<String, dynamic> json) {
  return _Verse.fromJson(json);
}

/// @nodoc
mixin _$Verse {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'verse_key')
  String? get verseKey => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_uthmani')
  String? get textUthmani => throw _privateConstructorUsedError;
  @JsonKey(name: 'text_indopak')
  String? get textIndopak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerseCopyWith<Verse> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerseCopyWith<$Res> {
  factory $VerseCopyWith(Verse value, $Res Function(Verse) then) =
      _$VerseCopyWithImpl<$Res, Verse>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'verse_key') String? verseKey,
      @JsonKey(name: 'text_uthmani') String? textUthmani,
      @JsonKey(name: 'text_indopak') String? textIndopak});
}

/// @nodoc
class _$VerseCopyWithImpl<$Res, $Val extends Verse>
    implements $VerseCopyWith<$Res> {
  _$VerseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verseKey = freezed,
    Object? textUthmani = freezed,
    Object? textIndopak = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verseKey: freezed == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textUthmani: freezed == textUthmani
          ? _value.textUthmani
          : textUthmani // ignore: cast_nullable_to_non_nullable
              as String?,
      textIndopak: freezed == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerseCopyWith<$Res> implements $VerseCopyWith<$Res> {
  factory _$$_VerseCopyWith(_$_Verse value, $Res Function(_$_Verse) then) =
      __$$_VerseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'verse_key') String? verseKey,
      @JsonKey(name: 'text_uthmani') String? textUthmani,
      @JsonKey(name: 'text_indopak') String? textIndopak});
}

/// @nodoc
class __$$_VerseCopyWithImpl<$Res> extends _$VerseCopyWithImpl<$Res, _$_Verse>
    implements _$$_VerseCopyWith<$Res> {
  __$$_VerseCopyWithImpl(_$_Verse _value, $Res Function(_$_Verse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verseKey = freezed,
    Object? textUthmani = freezed,
    Object? textIndopak = freezed,
  }) {
    return _then(_$_Verse(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      verseKey: freezed == verseKey
          ? _value.verseKey
          : verseKey // ignore: cast_nullable_to_non_nullable
              as String?,
      textUthmani: freezed == textUthmani
          ? _value.textUthmani
          : textUthmani // ignore: cast_nullable_to_non_nullable
              as String?,
      textIndopak: freezed == textIndopak
          ? _value.textIndopak
          : textIndopak // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Verse implements _Verse {
  _$_Verse(
      {this.id,
      @JsonKey(name: 'verse_key') this.verseKey,
      @JsonKey(name: 'text_uthmani') this.textUthmani,
      @JsonKey(name: 'text_indopak') this.textIndopak});

  factory _$_Verse.fromJson(Map<String, dynamic> json) =>
      _$$_VerseFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'verse_key')
  final String? verseKey;
  @override
  @JsonKey(name: 'text_uthmani')
  final String? textUthmani;
  @override
  @JsonKey(name: 'text_indopak')
  final String? textIndopak;

  @override
  String toString() {
    return 'Verse(id: $id, verseKey: $verseKey, textUthmani: $textUthmani, textIndopak: $textIndopak)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Verse &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verseKey, verseKey) ||
                other.verseKey == verseKey) &&
            (identical(other.textUthmani, textUthmani) ||
                other.textUthmani == textUthmani) &&
            (identical(other.textIndopak, textIndopak) ||
                other.textIndopak == textIndopak));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, verseKey, textUthmani, textIndopak);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      __$$_VerseCopyWithImpl<_$_Verse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerseToJson(
      this,
    );
  }
}

abstract class _Verse implements Verse {
  factory _Verse(
      {final int? id,
      @JsonKey(name: 'verse_key') final String? verseKey,
      @JsonKey(name: 'text_uthmani') final String? textUthmani,
      @JsonKey(name: 'text_indopak') final String? textIndopak}) = _$_Verse;

  factory _Verse.fromJson(Map<String, dynamic> json) = _$_Verse.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'verse_key')
  String? get verseKey;
  @override
  @JsonKey(name: 'text_uthmani')
  String? get textUthmani;
  @override
  @JsonKey(name: 'text_indopak')
  String? get textIndopak;
  @override
  @JsonKey(ignore: true)
  _$$_VerseCopyWith<_$_Verse> get copyWith =>
      throw _privateConstructorUsedError;
}
