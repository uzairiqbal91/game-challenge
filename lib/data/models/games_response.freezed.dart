// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'games_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamesResponse _$GamesResponseFromJson(Map<String, dynamic> json) {
  return _GamesResponse.fromJson(json);
}

/// @nodoc
mixin _$GamesResponse {
  int get count => throw _privateConstructorUsedError;
  String get next => throw _privateConstructorUsedError;
  dynamic get previous => throw _privateConstructorUsedError;
  List<Result> get results => throw _privateConstructorUsedError;
  bool get user_platforms => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesResponseCopyWith<GamesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesResponseCopyWith<$Res> {
  factory $GamesResponseCopyWith(
          GamesResponse value, $Res Function(GamesResponse) then) =
      _$GamesResponseCopyWithImpl<$Res, GamesResponse>;
  @useResult
  $Res call(
      {int count,
      String next,
      dynamic previous,
      List<Result> results,
      bool user_platforms});
}

/// @nodoc
class _$GamesResponseCopyWithImpl<$Res, $Val extends GamesResponse>
    implements $GamesResponseCopyWith<$Res> {
  _$GamesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
    Object? user_platforms = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      user_platforms: null == user_platforms
          ? _value.user_platforms
          : user_platforms // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesResponseImplCopyWith<$Res>
    implements $GamesResponseCopyWith<$Res> {
  factory _$$GamesResponseImplCopyWith(
          _$GamesResponseImpl value, $Res Function(_$GamesResponseImpl) then) =
      __$$GamesResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int count,
      String next,
      dynamic previous,
      List<Result> results,
      bool user_platforms});
}

/// @nodoc
class __$$GamesResponseImplCopyWithImpl<$Res>
    extends _$GamesResponseCopyWithImpl<$Res, _$GamesResponseImpl>
    implements _$$GamesResponseImplCopyWith<$Res> {
  __$$GamesResponseImplCopyWithImpl(
      _$GamesResponseImpl _value, $Res Function(_$GamesResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = null,
    Object? next = null,
    Object? previous = freezed,
    Object? results = null,
    Object? user_platforms = null,
  }) {
    return _then(_$GamesResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: null == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Result>,
      user_platforms: null == user_platforms
          ? _value.user_platforms
          : user_platforms // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesResponseImpl implements _GamesResponse {
  const _$GamesResponseImpl(
      {required this.count,
      required this.next,
      required this.previous,
      required final List<Result> results,
      required this.user_platforms})
      : _results = results;

  factory _$GamesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String next;
  @override
  final dynamic previous;
  final List<Result> _results;
  @override
  List<Result> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool user_platforms;

  @override
  String toString() {
    return 'GamesResponse(count: $count, next: $next, previous: $previous, results: $results, user_platforms: $user_platforms)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesResponseImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.next, next) || other.next == next) &&
            const DeepCollectionEquality().equals(other.previous, previous) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.user_platforms, user_platforms) ||
                other.user_platforms == user_platforms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      count,
      next,
      const DeepCollectionEquality().hash(previous),
      const DeepCollectionEquality().hash(_results),
      user_platforms);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesResponseImplCopyWith<_$GamesResponseImpl> get copyWith =>
      __$$GamesResponseImplCopyWithImpl<_$GamesResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesResponseImplToJson(
      this,
    );
  }
}

abstract class _GamesResponse implements GamesResponse {
  const factory _GamesResponse(
      {required final int count,
      required final String next,
      required final dynamic previous,
      required final List<Result> results,
      required final bool user_platforms}) = _$GamesResponseImpl;

  factory _GamesResponse.fromJson(Map<String, dynamic> json) =
      _$GamesResponseImpl.fromJson;

  @override
  int get count;
  @override
  String get next;
  @override
  dynamic get previous;
  @override
  List<Result> get results;
  @override
  bool get user_platforms;
  @override
  @JsonKey(ignore: true)
  _$$GamesResponseImplCopyWith<_$GamesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Result _$ResultFromJson(Map<String, dynamic> json) {
  return _Result.fromJson(json);
}

/// @nodoc
mixin _$Result {
  String get name => throw _privateConstructorUsedError;
  DateTime get released => throw _privateConstructorUsedError;
  String get background_image => throw _privateConstructorUsedError;
  dynamic get metacritic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultCopyWith<Result> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<$Res> {
  factory $ResultCopyWith(Result value, $Res Function(Result) then) =
      _$ResultCopyWithImpl<$Res, Result>;
  @useResult
  $Res call(
      {String name,
      DateTime released,
      String background_image,
      dynamic metacritic});
}

/// @nodoc
class _$ResultCopyWithImpl<$Res, $Val extends Result>
    implements $ResultCopyWith<$Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? released = null,
    Object? background_image = null,
    Object? metacritic = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime,
      background_image: null == background_image
          ? _value.background_image
          : background_image // ignore: cast_nullable_to_non_nullable
              as String,
      metacritic: freezed == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResultImplCopyWith<$Res> implements $ResultCopyWith<$Res> {
  factory _$$ResultImplCopyWith(
          _$ResultImpl value, $Res Function(_$ResultImpl) then) =
      __$$ResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      DateTime released,
      String background_image,
      dynamic metacritic});
}

/// @nodoc
class __$$ResultImplCopyWithImpl<$Res>
    extends _$ResultCopyWithImpl<$Res, _$ResultImpl>
    implements _$$ResultImplCopyWith<$Res> {
  __$$ResultImplCopyWithImpl(
      _$ResultImpl _value, $Res Function(_$ResultImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? released = null,
    Object? background_image = null,
    Object? metacritic = freezed,
  }) {
    return _then(_$ResultImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      released: null == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime,
      background_image: null == background_image
          ? _value.background_image
          : background_image // ignore: cast_nullable_to_non_nullable
              as String,
      metacritic: freezed == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultImpl implements _Result {
  const _$ResultImpl(
      {required this.name,
      required this.released,
      required this.background_image,
      required this.metacritic});

  factory _$ResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultImplFromJson(json);

  @override
  final String name;
  @override
  final DateTime released;
  @override
  final String background_image;
  @override
  final dynamic metacritic;

  @override
  String toString() {
    return 'Result(name: $name, released: $released, background_image: $background_image, metacritic: $metacritic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.background_image, background_image) ||
                other.background_image == background_image) &&
            const DeepCollectionEquality()
                .equals(other.metacritic, metacritic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, released, background_image,
      const DeepCollectionEquality().hash(metacritic));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      __$$ResultImplCopyWithImpl<_$ResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultImplToJson(
      this,
    );
  }
}

abstract class _Result implements Result {
  const factory _Result(
      {required final String name,
      required final DateTime released,
      required final String background_image,
      required final dynamic metacritic}) = _$ResultImpl;

  factory _Result.fromJson(Map<String, dynamic> json) = _$ResultImpl.fromJson;

  @override
  String get name;
  @override
  DateTime get released;
  @override
  String get background_image;
  @override
  dynamic get metacritic;
  @override
  @JsonKey(ignore: true)
  _$$ResultImplCopyWith<_$ResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
