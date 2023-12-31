// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'games_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamesResponseImpl _$$GamesResponseImplFromJson(Map<String, dynamic> json) =>
    _$GamesResponseImpl(
      count: json['count'] as int,
      next: json['next'] as String?,
      previous: json['previous'] as String?,
      results: (json['results'] as List<dynamic>)
          .map((e) => Game.fromJson(e as Map<String, dynamic>))
          .toList(),
      user_platforms: json['user_platforms'] as bool?,
    );

Map<String, dynamic> _$$GamesResponseImplToJson(_$GamesResponseImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'next': instance.next,
      'previous': instance.previous,
      'results': instance.results,
      'user_platforms': instance.user_platforms,
    };

_$GameImpl _$$GameImplFromJson(Map<String, dynamic> json) => _$GameImpl(
      name: json['name'] as String?,
      released: json['released'] == null
          ? null
          : DateTime.parse(json['released'] as String),
      id: json['id'] as int?,
      background_image: json['background_image'] as String?,
      metacritic: json['metacritic'] as int?,
    );

Map<String, dynamic> _$$GameImplToJson(_$GameImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'released': instance.released?.toIso8601String(),
      'id': instance.id,
      'background_image': instance.background_image,
      'metacritic': instance.metacritic,
    };
