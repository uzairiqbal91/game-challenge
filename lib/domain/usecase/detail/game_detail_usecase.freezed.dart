// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'game_detail_usecase.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GameDetailParams _$GameDetailParamsFromJson(Map<String, dynamic> json) {
  return _GameDetailParams.fromJson(json);
}

/// @nodoc
mixin _$GameDetailParams {
  int get id => throw _privateConstructorUsedError;
  String get key => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GameDetailParamsCopyWith<GameDetailParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GameDetailParamsCopyWith<$Res> {
  factory $GameDetailParamsCopyWith(
          GameDetailParams value, $Res Function(GameDetailParams) then) =
      _$GameDetailParamsCopyWithImpl<$Res, GameDetailParams>;
  @useResult
  $Res call({int id, String key});
}

/// @nodoc
class _$GameDetailParamsCopyWithImpl<$Res, $Val extends GameDetailParams>
    implements $GameDetailParamsCopyWith<$Res> {
  _$GameDetailParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GameDetailParamsImplCopyWith<$Res>
    implements $GameDetailParamsCopyWith<$Res> {
  factory _$$GameDetailParamsImplCopyWith(_$GameDetailParamsImpl value,
          $Res Function(_$GameDetailParamsImpl) then) =
      __$$GameDetailParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String key});
}

/// @nodoc
class __$$GameDetailParamsImplCopyWithImpl<$Res>
    extends _$GameDetailParamsCopyWithImpl<$Res, _$GameDetailParamsImpl>
    implements _$$GameDetailParamsImplCopyWith<$Res> {
  __$$GameDetailParamsImplCopyWithImpl(_$GameDetailParamsImpl _value,
      $Res Function(_$GameDetailParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? key = null,
  }) {
    return _then(_$GameDetailParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      key: null == key
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GameDetailParamsImpl implements _GameDetailParams {
  const _$GameDetailParamsImpl({this.id = ApiStrings.defaultId, this.key = ''});

  factory _$GameDetailParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GameDetailParamsImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final String key;

  @override
  String toString() {
    return 'GameDetailParams(id: $id, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GameDetailParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, key);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GameDetailParamsImplCopyWith<_$GameDetailParamsImpl> get copyWith =>
      __$$GameDetailParamsImplCopyWithImpl<_$GameDetailParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GameDetailParamsImplToJson(
      this,
    );
  }
}

abstract class _GameDetailParams implements GameDetailParams {
  const factory _GameDetailParams({final int id, final String key}) =
      _$GameDetailParamsImpl;

  factory _GameDetailParams.fromJson(Map<String, dynamic> json) =
      _$GameDetailParamsImpl.fromJson;

  @override
  int get id;
  @override
  String get key;
  @override
  @JsonKey(ignore: true)
  _$$GameDetailParamsImplCopyWith<_$GameDetailParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
