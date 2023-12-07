// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GamesDetailResponse _$GamesDetailResponseFromJson(Map<String, dynamic> json) {
  return _GamesDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$GamesDetailResponse {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  List<Developer>? get developers => throw _privateConstructorUsedError;
  List<Developer>? get genres => throw _privateConstructorUsedError;
  List<Developer>? get publishers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GamesDetailResponseCopyWith<GamesDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GamesDetailResponseCopyWith<$Res> {
  factory $GamesDetailResponseCopyWith(
          GamesDetailResponse value, $Res Function(GamesDetailResponse) then) =
      _$GamesDetailResponseCopyWithImpl<$Res, GamesDetailResponse>;
  @useResult
  $Res call(
      {int id,
      String? name,
      String? description,
      List<Developer>? developers,
      List<Developer>? genres,
      List<Developer>? publishers});
}

/// @nodoc
class _$GamesDetailResponseCopyWithImpl<$Res, $Val extends GamesDetailResponse>
    implements $GamesDetailResponseCopyWith<$Res> {
  _$GamesDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? developers = freezed,
    Object? genres = freezed,
    Object? publishers = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developers: freezed == developers
          ? _value.developers
          : developers // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
      genres: freezed == genres
          ? _value.genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
      publishers: freezed == publishers
          ? _value.publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GamesDetailResponseImplCopyWith<$Res>
    implements $GamesDetailResponseCopyWith<$Res> {
  factory _$$GamesDetailResponseImplCopyWith(_$GamesDetailResponseImpl value,
          $Res Function(_$GamesDetailResponseImpl) then) =
      __$$GamesDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? name,
      String? description,
      List<Developer>? developers,
      List<Developer>? genres,
      List<Developer>? publishers});
}

/// @nodoc
class __$$GamesDetailResponseImplCopyWithImpl<$Res>
    extends _$GamesDetailResponseCopyWithImpl<$Res, _$GamesDetailResponseImpl>
    implements _$$GamesDetailResponseImplCopyWith<$Res> {
  __$$GamesDetailResponseImplCopyWithImpl(_$GamesDetailResponseImpl _value,
      $Res Function(_$GamesDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? description = freezed,
    Object? developers = freezed,
    Object? genres = freezed,
    Object? publishers = freezed,
  }) {
    return _then(_$GamesDetailResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      developers: freezed == developers
          ? _value._developers
          : developers // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
      genres: freezed == genres
          ? _value._genres
          : genres // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
      publishers: freezed == publishers
          ? _value._publishers
          : publishers // ignore: cast_nullable_to_non_nullable
              as List<Developer>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GamesDetailResponseImpl implements _GamesDetailResponse {
  const _$GamesDetailResponseImpl(
      {required this.id,
      required this.name,
      required this.description,
      required final List<Developer>? developers,
      required final List<Developer>? genres,
      required final List<Developer>? publishers})
      : _developers = developers,
        _genres = genres,
        _publishers = publishers;

  factory _$GamesDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GamesDetailResponseImplFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  final List<Developer>? _developers;
  @override
  List<Developer>? get developers {
    final value = _developers;
    if (value == null) return null;
    if (_developers is EqualUnmodifiableListView) return _developers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Developer>? _genres;
  @override
  List<Developer>? get genres {
    final value = _genres;
    if (value == null) return null;
    if (_genres is EqualUnmodifiableListView) return _genres;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Developer>? _publishers;
  @override
  List<Developer>? get publishers {
    final value = _publishers;
    if (value == null) return null;
    if (_publishers is EqualUnmodifiableListView) return _publishers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GamesDetailResponse(id: $id, name: $name, description: $description, developers: $developers, genres: $genres, publishers: $publishers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GamesDetailResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._developers, _developers) &&
            const DeepCollectionEquality().equals(other._genres, _genres) &&
            const DeepCollectionEquality()
                .equals(other._publishers, _publishers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      description,
      const DeepCollectionEquality().hash(_developers),
      const DeepCollectionEquality().hash(_genres),
      const DeepCollectionEquality().hash(_publishers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GamesDetailResponseImplCopyWith<_$GamesDetailResponseImpl> get copyWith =>
      __$$GamesDetailResponseImplCopyWithImpl<_$GamesDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GamesDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _GamesDetailResponse implements GamesDetailResponse {
  const factory _GamesDetailResponse(
      {required final int id,
      required final String? name,
      required final String? description,
      required final List<Developer>? developers,
      required final List<Developer>? genres,
      required final List<Developer>? publishers}) = _$GamesDetailResponseImpl;

  factory _GamesDetailResponse.fromJson(Map<String, dynamic> json) =
      _$GamesDetailResponseImpl.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  List<Developer>? get developers;
  @override
  List<Developer>? get genres;
  @override
  List<Developer>? get publishers;
  @override
  @JsonKey(ignore: true)
  _$$GamesDetailResponseImplCopyWith<_$GamesDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Developer _$DeveloperFromJson(Map<String, dynamic> json) {
  return _Developer.fromJson(json);
}

/// @nodoc
mixin _$Developer {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  int? get games_count => throw _privateConstructorUsedError;
  String? get image_background => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeveloperCopyWith<Developer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeveloperCopyWith<$Res> {
  factory $DeveloperCopyWith(Developer value, $Res Function(Developer) then) =
      _$DeveloperCopyWithImpl<$Res, Developer>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      int? games_count,
      String? image_background});
}

/// @nodoc
class _$DeveloperCopyWithImpl<$Res, $Val extends Developer>
    implements $DeveloperCopyWith<$Res> {
  _$DeveloperCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? games_count = freezed,
    Object? image_background = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      games_count: freezed == games_count
          ? _value.games_count
          : games_count // ignore: cast_nullable_to_non_nullable
              as int?,
      image_background: freezed == image_background
          ? _value.image_background
          : image_background // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeveloperImplCopyWith<$Res>
    implements $DeveloperCopyWith<$Res> {
  factory _$$DeveloperImplCopyWith(
          _$DeveloperImpl value, $Res Function(_$DeveloperImpl) then) =
      __$$DeveloperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      String? slug,
      int? games_count,
      String? image_background});
}

/// @nodoc
class __$$DeveloperImplCopyWithImpl<$Res>
    extends _$DeveloperCopyWithImpl<$Res, _$DeveloperImpl>
    implements _$$DeveloperImplCopyWith<$Res> {
  __$$DeveloperImplCopyWithImpl(
      _$DeveloperImpl _value, $Res Function(_$DeveloperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? slug = freezed,
    Object? games_count = freezed,
    Object? image_background = freezed,
  }) {
    return _then(_$DeveloperImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      games_count: freezed == games_count
          ? _value.games_count
          : games_count // ignore: cast_nullable_to_non_nullable
              as int?,
      image_background: freezed == image_background
          ? _value.image_background
          : image_background // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeveloperImpl implements _Developer {
  const _$DeveloperImpl(
      {required this.id,
      required this.name,
      required this.slug,
      required this.games_count,
      required this.image_background});

  factory _$DeveloperImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeveloperImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? slug;
  @override
  final int? games_count;
  @override
  final String? image_background;

  @override
  String toString() {
    return 'Developer(id: $id, name: $name, slug: $slug, games_count: $games_count, image_background: $image_background)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeveloperImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.games_count, games_count) ||
                other.games_count == games_count) &&
            (identical(other.image_background, image_background) ||
                other.image_background == image_background));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, slug, games_count, image_background);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeveloperImplCopyWith<_$DeveloperImpl> get copyWith =>
      __$$DeveloperImplCopyWithImpl<_$DeveloperImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeveloperImplToJson(
      this,
    );
  }
}

abstract class _Developer implements Developer {
  const factory _Developer(
      {required final int? id,
      required final String? name,
      required final String? slug,
      required final int? games_count,
      required final String? image_background}) = _$DeveloperImpl;

  factory _Developer.fromJson(Map<String, dynamic> json) =
      _$DeveloperImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get slug;
  @override
  int? get games_count;
  @override
  String? get image_background;
  @override
  @JsonKey(ignore: true)
  _$$DeveloperImplCopyWith<_$DeveloperImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
