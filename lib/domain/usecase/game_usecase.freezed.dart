// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameParams _$GameParamsFromJson(Map<String, dynamic> json) {
  return _GameParams.fromJson(json);
}

/// @nodoc
mixin _$GameParams {
  int get page => throw _privateConstructorUsedError;
  int get page_size => throw _privateConstructorUsedError;
  int get platforms => throw _privateConstructorUsedError;
  String get dates => throw _privateConstructorUsedError;
  String get ordering => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameParamsCopyWith<GameParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameParamsCopyWith<$Res> {
  factory $GameParamsCopyWith(
          GameParams value, $Res Function(GameParams) then) =
      _$GameParamsCopyWithImpl<$Res, GameParams>;
  @useResult
  $Res call(
      {int page,
      int page_size,
      int platforms,
      String dates,
      String ordering,
      String key});
}

/// @nodoc
class _$GameParamsCopyWithImpl<$Res, $Val extends GameParams>
    implements $GameParamsCopyWith<$Res> {
  _$GameParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? page_size = null,
    Object? platforms = null,
    Object? dates = null,
    Object? ordering = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      page_size: null == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as int,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String,
      ordering: null == ordering
          ? _value.ordering
          : ordering // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameParamsImplCopyWith<$Res>
    implements $GameParamsCopyWith<$Res> {
  factory _$$GameParamsImplCopyWith(
          _$GameParamsImpl value, $Res Function(_$GameParamsImpl) then) =
      __$$GameParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page,
      int page_size,
      int platforms,
      String dates,
      String ordering,
      String key});
}

/// @nodoc
class __$$GameParamsImplCopyWithImpl<$Res>
    extends _$GameParamsCopyWithImpl<$Res, _$GameParamsImpl>
    implements _$$GameParamsImplCopyWith<$Res> {
  __$$GameParamsImplCopyWithImpl(
      _$GameParamsImpl _value, $Res Function(_$GameParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? page_size = null,
    Object? platforms = null,
    Object? dates = null,
    Object? ordering = null,
    Object? key = null,
  }) {
    return _then(_$GameParamsImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      page_size: null == page_size
          ? _value.page_size
          : page_size // ignore: cast_nullable_to_non_nullable
              as int,
      platforms: null == platforms
          ? _value.platforms
          : platforms // ignore: cast_nullable_to_non_nullable
              as int,
      dates: null == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as String,
      ordering: null == ordering
          ? _value.ordering
          : ordering // ignore: cast_nullable_to_non_nullable
              as String,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameParamsImpl implements _GameParams {
  const _$GameParamsImpl(
      {this.page = ApiStrings.defaultPage,
      this.page_size = ApiStrings.defaultPageSize,
      this.platforms = ApiStrings.defaultPlatform,
      this.dates = ApiStrings.defaultDates,
      this.ordering = ApiStrings.defaultOrdering,
      this.key = '686b03ffc0154abb837a21404851f3a7'});

  factory _$GameParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameParamsImplFromJson(json);

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int page_size;
  @override
  @JsonKey()
  final int platforms;
  @override
  @JsonKey()
  final String dates;
  @override
  @JsonKey()
  final String ordering;
  @override
  @JsonKey()
  final String key;

  @override
  String toString() {
    return 'GameParams(page: $page, page_size: $page_size, platforms: $platforms, dates: $dates, ordering: $ordering, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameParamsImpl &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.page_size, page_size) ||
                other.page_size == page_size) &&
            (identical(other.platforms, platforms) ||
                other.platforms == platforms) &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.ordering, ordering) ||
                other.ordering == ordering) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, page, page_size, platforms, dates, ordering, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameParamsImplCopyWith<_$GameParamsImpl> get copyWith =>
      __$$GameParamsImplCopyWithImpl<_$GameParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameParamsImplToJson(
      this,
    );
  }
}

abstract class _GameParams implements GameParams {
  const factory _GameParams(
      {final int page,
      final int page_size,
      final int platforms,
      final String dates,
      final String ordering,
      final String key}) = _$GameParamsImpl;

  factory _GameParams.fromJson(Map<String, dynamic> json) =
      _$GameParamsImpl.fromJson;

  @override
  int get page;
  @override
  int get page_size;
  @override
  int get platforms;
  @override
  String get dates;
  @override
  String get ordering;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$GameParamsImplCopyWith<_$GameParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
