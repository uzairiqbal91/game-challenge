// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameParamsImpl _$$GameParamsImplFromJson(Map<String, dynamic> json) =>
    _$GameParamsImpl(
      page: json['page'] as int? ?? ApiStrings.defaultPage,
      page_size: json['page_size'] as int? ?? ApiStrings.defaultPageSize,
      platforms: json['platforms'] as int? ?? ApiStrings.defaultPlatform,
      dates: json['dates'] as String? ?? ApiStrings.defaultDates,
      ordering: json['ordering'] as String? ?? ApiStrings.defaultOrdering,
      key: json['key'] as String? ?? '',
    );

Map<String, dynamic> _$$GameParamsImplToJson(_$GameParamsImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'page_size': instance.page_size,
      'platforms': instance.platforms,
      'dates': instance.dates,
      'ordering': instance.ordering,
      'key': instance.key,
    };
