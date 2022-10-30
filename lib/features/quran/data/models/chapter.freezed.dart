// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chapter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Chapter _$ChapterFromJson(Map<String, dynamic> json) {
  return _Chapter.fromJson(json);
}

/// @nodoc
mixin _$Chapter {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'revelation_place')
  String? get revelationPlace => throw _privateConstructorUsedError;
  @JsonKey(name: 'revelation_order')
  int? get revelationOrder => throw _privateConstructorUsedError;
  @JsonKey(name: 'bismillah_pre')
  bool? get bismillahPre => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_simple')
  String? get nameSimple => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_complex')
  String? get nameComplex => throw _privateConstructorUsedError;
  @JsonKey(name: 'name_arabic')
  String? get nameArabic => throw _privateConstructorUsedError;
  @JsonKey(name: 'verses_count')
  int? get versesCount => throw _privateConstructorUsedError;
  List<int>? get pages => throw _privateConstructorUsedError;
  @JsonKey(name: 'translated_name')
  TranslatedName? get translatedName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChapterCopyWith<Chapter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChapterCopyWith<$Res> {
  factory $ChapterCopyWith(Chapter value, $Res Function(Chapter) then) =
      _$ChapterCopyWithImpl<$Res, Chapter>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'revelation_place') String? revelationPlace,
      @JsonKey(name: 'revelation_order') int? revelationOrder,
      @JsonKey(name: 'bismillah_pre') bool? bismillahPre,
      @JsonKey(name: 'name_simple') String? nameSimple,
      @JsonKey(name: 'name_complex') String? nameComplex,
      @JsonKey(name: 'name_arabic') String? nameArabic,
      @JsonKey(name: 'verses_count') int? versesCount,
      List<int>? pages,
      @JsonKey(name: 'translated_name') TranslatedName? translatedName});

  $TranslatedNameCopyWith<$Res>? get translatedName;
}

/// @nodoc
class _$ChapterCopyWithImpl<$Res, $Val extends Chapter>
    implements $ChapterCopyWith<$Res> {
  _$ChapterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? revelationPlace = freezed,
    Object? revelationOrder = freezed,
    Object? bismillahPre = freezed,
    Object? nameSimple = freezed,
    Object? nameComplex = freezed,
    Object? nameArabic = freezed,
    Object? versesCount = freezed,
    Object? pages = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      revelationPlace: freezed == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      revelationOrder: freezed == revelationOrder
          ? _value.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      bismillahPre: freezed == bismillahPre
          ? _value.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool?,
      nameSimple: freezed == nameSimple
          ? _value.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String?,
      nameComplex: freezed == nameComplex
          ? _value.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String?,
      nameArabic: freezed == nameArabic
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      versesCount: freezed == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value.pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      translatedName: freezed == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TranslatedNameCopyWith<$Res>? get translatedName {
    if (_value.translatedName == null) {
      return null;
    }

    return $TranslatedNameCopyWith<$Res>(_value.translatedName!, (value) {
      return _then(_value.copyWith(translatedName: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ChapterCopyWith<$Res> implements $ChapterCopyWith<$Res> {
  factory _$$_ChapterCopyWith(
          _$_Chapter value, $Res Function(_$_Chapter) then) =
      __$$_ChapterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'revelation_place') String? revelationPlace,
      @JsonKey(name: 'revelation_order') int? revelationOrder,
      @JsonKey(name: 'bismillah_pre') bool? bismillahPre,
      @JsonKey(name: 'name_simple') String? nameSimple,
      @JsonKey(name: 'name_complex') String? nameComplex,
      @JsonKey(name: 'name_arabic') String? nameArabic,
      @JsonKey(name: 'verses_count') int? versesCount,
      List<int>? pages,
      @JsonKey(name: 'translated_name') TranslatedName? translatedName});

  @override
  $TranslatedNameCopyWith<$Res>? get translatedName;
}

/// @nodoc
class __$$_ChapterCopyWithImpl<$Res>
    extends _$ChapterCopyWithImpl<$Res, _$_Chapter>
    implements _$$_ChapterCopyWith<$Res> {
  __$$_ChapterCopyWithImpl(_$_Chapter _value, $Res Function(_$_Chapter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? revelationPlace = freezed,
    Object? revelationOrder = freezed,
    Object? bismillahPre = freezed,
    Object? nameSimple = freezed,
    Object? nameComplex = freezed,
    Object? nameArabic = freezed,
    Object? versesCount = freezed,
    Object? pages = freezed,
    Object? translatedName = freezed,
  }) {
    return _then(_$_Chapter(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      revelationPlace: freezed == revelationPlace
          ? _value.revelationPlace
          : revelationPlace // ignore: cast_nullable_to_non_nullable
              as String?,
      revelationOrder: freezed == revelationOrder
          ? _value.revelationOrder
          : revelationOrder // ignore: cast_nullable_to_non_nullable
              as int?,
      bismillahPre: freezed == bismillahPre
          ? _value.bismillahPre
          : bismillahPre // ignore: cast_nullable_to_non_nullable
              as bool?,
      nameSimple: freezed == nameSimple
          ? _value.nameSimple
          : nameSimple // ignore: cast_nullable_to_non_nullable
              as String?,
      nameComplex: freezed == nameComplex
          ? _value.nameComplex
          : nameComplex // ignore: cast_nullable_to_non_nullable
              as String?,
      nameArabic: freezed == nameArabic
          ? _value.nameArabic
          : nameArabic // ignore: cast_nullable_to_non_nullable
              as String?,
      versesCount: freezed == versesCount
          ? _value.versesCount
          : versesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      pages: freezed == pages
          ? _value._pages
          : pages // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      translatedName: freezed == translatedName
          ? _value.translatedName
          : translatedName // ignore: cast_nullable_to_non_nullable
              as TranslatedName?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Chapter implements _Chapter {
  _$_Chapter(
      {this.id,
      @JsonKey(name: 'revelation_place') this.revelationPlace,
      @JsonKey(name: 'revelation_order') this.revelationOrder,
      @JsonKey(name: 'bismillah_pre') this.bismillahPre,
      @JsonKey(name: 'name_simple') this.nameSimple,
      @JsonKey(name: 'name_complex') this.nameComplex,
      @JsonKey(name: 'name_arabic') this.nameArabic,
      @JsonKey(name: 'verses_count') this.versesCount,
      final List<int>? pages,
      @JsonKey(name: 'translated_name') this.translatedName})
      : _pages = pages;

  factory _$_Chapter.fromJson(Map<String, dynamic> json) =>
      _$$_ChapterFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'revelation_place')
  final String? revelationPlace;
  @override
  @JsonKey(name: 'revelation_order')
  final int? revelationOrder;
  @override
  @JsonKey(name: 'bismillah_pre')
  final bool? bismillahPre;
  @override
  @JsonKey(name: 'name_simple')
  final String? nameSimple;
  @override
  @JsonKey(name: 'name_complex')
  final String? nameComplex;
  @override
  @JsonKey(name: 'name_arabic')
  final String? nameArabic;
  @override
  @JsonKey(name: 'verses_count')
  final int? versesCount;
  final List<int>? _pages;
  @override
  List<int>? get pages {
    final value = _pages;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'translated_name')
  final TranslatedName? translatedName;

  @override
  String toString() {
    return 'Chapter(id: $id, revelationPlace: $revelationPlace, revelationOrder: $revelationOrder, bismillahPre: $bismillahPre, nameSimple: $nameSimple, nameComplex: $nameComplex, nameArabic: $nameArabic, versesCount: $versesCount, pages: $pages, translatedName: $translatedName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Chapter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.revelationPlace, revelationPlace) ||
                other.revelationPlace == revelationPlace) &&
            (identical(other.revelationOrder, revelationOrder) ||
                other.revelationOrder == revelationOrder) &&
            (identical(other.bismillahPre, bismillahPre) ||
                other.bismillahPre == bismillahPre) &&
            (identical(other.nameSimple, nameSimple) ||
                other.nameSimple == nameSimple) &&
            (identical(other.nameComplex, nameComplex) ||
                other.nameComplex == nameComplex) &&
            (identical(other.nameArabic, nameArabic) ||
                other.nameArabic == nameArabic) &&
            (identical(other.versesCount, versesCount) ||
                other.versesCount == versesCount) &&
            const DeepCollectionEquality().equals(other._pages, _pages) &&
            (identical(other.translatedName, translatedName) ||
                other.translatedName == translatedName));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      revelationPlace,
      revelationOrder,
      bismillahPre,
      nameSimple,
      nameComplex,
      nameArabic,
      versesCount,
      const DeepCollectionEquality().hash(_pages),
      translatedName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      __$$_ChapterCopyWithImpl<_$_Chapter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChapterToJson(
      this,
    );
  }
}

abstract class _Chapter implements Chapter {
  factory _Chapter(
      {final int? id,
      @JsonKey(name: 'revelation_place')
          final String? revelationPlace,
      @JsonKey(name: 'revelation_order')
          final int? revelationOrder,
      @JsonKey(name: 'bismillah_pre')
          final bool? bismillahPre,
      @JsonKey(name: 'name_simple')
          final String? nameSimple,
      @JsonKey(name: 'name_complex')
          final String? nameComplex,
      @JsonKey(name: 'name_arabic')
          final String? nameArabic,
      @JsonKey(name: 'verses_count')
          final int? versesCount,
      final List<int>? pages,
      @JsonKey(name: 'translated_name')
          final TranslatedName? translatedName}) = _$_Chapter;

  factory _Chapter.fromJson(Map<String, dynamic> json) = _$_Chapter.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'revelation_place')
  String? get revelationPlace;
  @override
  @JsonKey(name: 'revelation_order')
  int? get revelationOrder;
  @override
  @JsonKey(name: 'bismillah_pre')
  bool? get bismillahPre;
  @override
  @JsonKey(name: 'name_simple')
  String? get nameSimple;
  @override
  @JsonKey(name: 'name_complex')
  String? get nameComplex;
  @override
  @JsonKey(name: 'name_arabic')
  String? get nameArabic;
  @override
  @JsonKey(name: 'verses_count')
  int? get versesCount;
  @override
  List<int>? get pages;
  @override
  @JsonKey(name: 'translated_name')
  TranslatedName? get translatedName;
  @override
  @JsonKey(ignore: true)
  _$$_ChapterCopyWith<_$_Chapter> get copyWith =>
      throw _privateConstructorUsedError;
}
