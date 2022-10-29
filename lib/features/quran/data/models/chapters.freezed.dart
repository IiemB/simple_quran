// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chapters.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chapters _$ChaptersFromJson(Map<String, dynamic> json) {
  return _Chapters.fromJson(json);
}

/// @nodoc
mixin _$Chapters {
  @JsonKey(name: 'chapters')
  List<Chapter>? get chapters => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChaptersCopyWith<Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChaptersCopyWith<$Res> {
  factory $ChaptersCopyWith(Chapters value, $Res Function(Chapters) then) =
      _$ChaptersCopyWithImpl<$Res, Chapters>;
  @useResult
  $Res call({@JsonKey(name: 'chapters') List<Chapter>? chapters});
}

/// @nodoc
class _$ChaptersCopyWithImpl<$Res, $Val extends Chapters>
    implements $ChaptersCopyWith<$Res> {
  _$ChaptersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = freezed,
  }) {
    return _then(_value.copyWith(
      chapters: freezed == chapters
          ? _value.chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChaptersCopyWith<$Res> implements $ChaptersCopyWith<$Res> {
  factory _$$_ChaptersCopyWith(
          _$_Chapters value, $Res Function(_$_Chapters) then) =
      __$$_ChaptersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'chapters') List<Chapter>? chapters});
}

/// @nodoc
class __$$_ChaptersCopyWithImpl<$Res>
    extends _$ChaptersCopyWithImpl<$Res, _$_Chapters>
    implements _$$_ChaptersCopyWith<$Res> {
  __$$_ChaptersCopyWithImpl(
      _$_Chapters _value, $Res Function(_$_Chapters) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chapters = freezed,
  }) {
    return _then(_$_Chapters(
      chapters: freezed == chapters
          ? _value._chapters
          : chapters // ignore: cast_nullable_to_non_nullable
              as List<Chapter>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapters implements _Chapters {
  _$_Chapters({@JsonKey(name: 'chapters') final List<Chapter>? chapters})
      : _chapters = chapters;

  factory _$_Chapters.fromJson(Map<String, dynamic> json) =>
      _$$_ChaptersFromJson(json);

  final List<Chapter>? _chapters;
  @override
  @JsonKey(name: 'chapters')
  List<Chapter>? get chapters {
    final value = _chapters;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Chapters(chapters: $chapters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapters &&
            const DeepCollectionEquality().equals(other._chapters, _chapters));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_chapters));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChaptersCopyWith<_$_Chapters> get copyWith =>
      __$$_ChaptersCopyWithImpl<_$_Chapters>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChaptersToJson(
      this,
    );
  }
}

abstract class _Chapters implements Chapters {
  factory _Chapters(
      {@JsonKey(name: 'chapters') final List<Chapter>? chapters}) = _$_Chapters;

  factory _Chapters.fromJson(Map<String, dynamic> json) = _$_Chapters.fromJson;

  @override
  @JsonKey(name: 'chapters')
  List<Chapter>? get chapters;
  @override
  @JsonKey(ignore: true)
  _$$_ChaptersCopyWith<_$_Chapters> get copyWith =>
      throw _privateConstructorUsedError;
}
