// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GamesDetailResponseImpl _$$GamesDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$GamesDetailResponseImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      developers: (json['developers'] as List<dynamic>)
          .map((e) => Developer.fromJson(e as Map<String, dynamic>))
          .toList(),
      genres: (json['genres'] as List<dynamic>)
          .map((e) => Developer.fromJson(e as Map<String, dynamic>))
          .toList(),
      publishers: (json['publishers'] as List<dynamic>)
          .map((e) => Developer.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GamesDetailResponseImplToJson(
        _$GamesDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'developers': instance.developers,
      'genres': instance.genres,
      'publishers': instance.publishers,
    };

_$DeveloperImpl _$$DeveloperImplFromJson(Map<String, dynamic> json) =>
    _$DeveloperImpl(
      id: json['id'] as int,
      name: json['name'] as String?,
      slug: json['slug'] as String?,
      gamesCount: json['gamesCount'] as int?,
      imageBackground: json['imageBackground'] as String?,
    );

Map<String, dynamic> _$$DeveloperImplToJson(_$DeveloperImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'gamesCount': instance.gamesCount,
      'imageBackground': instance.imageBackground,
    };
