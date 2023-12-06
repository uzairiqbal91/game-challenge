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
  String? get next => throw _privateConstructorUsedError;
  String? get previous => throw _privateConstructorUsedError;
  List<Game> get results => throw _privateConstructorUsedError;
  bool? get user_platforms => throw _privateConstructorUsedError;

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
      String? next,
      String? previous,
      List<Game> results,
      bool? user_platforms});
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
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
    Object? user_platforms = freezed,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      user_platforms: freezed == user_platforms
          ? _value.user_platforms
          : user_platforms // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      String? next,
      String? previous,
      List<Game> results,
      bool? user_platforms});
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
    Object? next = freezed,
    Object? previous = freezed,
    Object? results = null,
    Object? user_platforms = freezed,
  }) {
    return _then(_$GamesResponseImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      next: freezed == next
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      previous: freezed == previous
          ? _value.previous
          : previous // ignore: cast_nullable_to_non_nullable
              as String?,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Game>,
      user_platforms: freezed == user_platforms
          ? _value.user_platforms
          : user_platforms // ignore: cast_nullable_to_non_nullable
              as bool?,
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
      required final List<Game> results,
      required this.user_platforms})
      : _results = results;

  factory _$GamesResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesResponseImplFromJson(json);

  @override
  final int count;
  @override
  final String? next;
  @override
  final String? previous;
  final List<Game> _results;
  @override
  List<Game> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final bool? user_platforms;

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
            (identical(other.previous, previous) ||
                other.previous == previous) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.user_platforms, user_platforms) ||
                other.user_platforms == user_platforms));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, next, previous,
      const DeepCollectionEquality().hash(_results), user_platforms);

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
      required final String? next,
      required final String? previous,
      required final List<Game> results,
      required final bool? user_platforms}) = _$GamesResponseImpl;

  factory _GamesResponse.fromJson(Map<String, dynamic> json) =
      _$GamesResponseImpl.fromJson;

  @override
  int get count;
  @override
  String? get next;
  @override
  String? get previous;
  @override
  List<Game> get results;
  @override
  bool? get user_platforms;
  @override
  @JsonKey(ignore: true)
  _$$GamesResponseImplCopyWith<_$GamesResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Game _$GameFromJson(Map<String, dynamic> json) {
  return _Game.fromJson(json);
}

/// @nodoc
mixin _$Game {
  String? get name => throw _privateConstructorUsedError;
  DateTime? get released => throw _privateConstructorUsedError;
  String? get background_image => throw _privateConstructorUsedError;
  int? get metacritic => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameCopyWith<Game> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameCopyWith<$Res> {
  factory $GameCopyWith(Game value, $Res Function(Game) then) =
      _$GameCopyWithImpl<$Res, Game>;
  @useResult
  $Res call(
      {String? name,
      DateTime? released,
      String? background_image,
      int? metacritic});
}

/// @nodoc
class _$GameCopyWithImpl<$Res, $Val extends Game>
    implements $GameCopyWith<$Res> {
  _$GameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? released = freezed,
    Object? background_image = freezed,
    Object? metacritic = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      background_image: freezed == background_image
          ? _value.background_image
          : background_image // ignore: cast_nullable_to_non_nullable
              as String?,
      metacritic: freezed == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameImplCopyWith<$Res> implements $GameCopyWith<$Res> {
  factory _$$GameImplCopyWith(
          _$GameImpl value, $Res Function(_$GameImpl) then) =
      __$$GameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      DateTime? released,
      String? background_image,
      int? metacritic});
}

/// @nodoc
class __$$GameImplCopyWithImpl<$Res>
    extends _$GameCopyWithImpl<$Res, _$GameImpl>
    implements _$$GameImplCopyWith<$Res> {
  __$$GameImplCopyWithImpl(_$GameImpl _value, $Res Function(_$GameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? released = freezed,
    Object? background_image = freezed,
    Object? metacritic = freezed,
  }) {
    return _then(_$GameImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      released: freezed == released
          ? _value.released
          : released // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      background_image: freezed == background_image
          ? _value.background_image
          : background_image // ignore: cast_nullable_to_non_nullable
              as String?,
      metacritic: freezed == metacritic
          ? _value.metacritic
          : metacritic // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameImpl implements _Game {
  const _$GameImpl(
      {required this.name,
      required this.released,
      required this.background_image,
      required this.metacritic});

  factory _$GameImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameImplFromJson(json);

  @override
  final String? name;
  @override
  final DateTime? released;
  @override
  final String? background_image;
  @override
  final int? metacritic;

  @override
  String toString() {
    return 'Game(name: $name, released: $released, background_image: $background_image, metacritic: $metacritic)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.released, released) ||
                other.released == released) &&
            (identical(other.background_image, background_image) ||
                other.background_image == background_image) &&
            (identical(other.metacritic, metacritic) ||
                other.metacritic == metacritic));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, released, background_image, metacritic);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      __$$GameImplCopyWithImpl<_$GameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameImplToJson(
      this,
    );
  }
}

abstract class _Game implements Game {
  const factory _Game(
      {required final String? name,
      required final DateTime? released,
      required final String? background_image,
      required final int? metacritic}) = _$GameImpl;

  factory _Game.fromJson(Map<String, dynamic> json) = _$GameImpl.fromJson;

  @override
  String? get name;
  @override
  DateTime? get released;
  @override
  String? get background_image;
  @override
  int? get metacritic;
  @override
  @JsonKey(ignore: true)
  _$$GameImplCopyWith<_$GameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
