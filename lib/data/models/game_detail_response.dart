import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'game_detail_response.freezed.dart';
part 'game_detail_response.g.dart';

GamesDetailResponse gamesDetailResponseFromJson(String str) => GamesDetailResponse.fromJson(json.decode(str));

String gamesDetailResponseToJson(GamesDetailResponse data) => json.encode(data.toJson());

@freezed
class GamesDetailResponse with _$GamesDetailResponse {
  const factory GamesDetailResponse({
    required int id,
    required String? name,
    required String? description,
    required List<Developer>? developers,
    required List<Developer>? genres,
    required List<Developer>? publishers,
  }) = _GamesDetailResponse;

  factory GamesDetailResponse.fromJson(Map<String, dynamic> json) => _$GamesDetailResponseFromJson(json);
}

@freezed
class Developer with _$Developer {
  const factory Developer({
    required int? id,
    required String? name,
    required String? slug,
    required int? games_count,
    required String? image_background,
  }) = _Developer;

  factory Developer.fromJson(Map<String, dynamic> json) => _$DeveloperFromJson(json);
}