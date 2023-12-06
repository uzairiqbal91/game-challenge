// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game_usecase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GameParamsImpl _$$GameParamsImplFromJson(Map<String, dynamic> json) =>
    _$GameParamsImpl(
      page: json['page'] as int? ?? 1,
      page_size: json['page_size'] as int? ?? 20,
      platforms: json['platforms'] as int? ?? 187,
      dates: json['dates'] as String? ?? '2022-12-06,2023-12-06',
      ordering: json['ordering'] as String? ?? '-released',
      key: json['key'] as String? ?? '02ef6ba5d13444ee86bad607e8bce3f4',
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
