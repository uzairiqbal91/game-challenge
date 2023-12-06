// To parse this JSON data, do
//
//     final gamesResponse = gamesResponseFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'games_response.freezed.dart';
part 'games_response.g.dart';

GamesResponse gamesResponseFromJson(String str) => GamesResponse.fromJson(json.decode(str));

String gamesResponseToJson(GamesResponse data) => json.encode(data.toJson());

@freezed
class GamesResponse with _$GamesResponse {
  const factory GamesResponse({
    required int count,
    required String next,
    required dynamic previous,
    required List<Result> results,
    required bool user_platforms,
  }) = _GamesResponse;

  factory GamesResponse.fromJson(Map<String, dynamic> json) => _$GamesResponseFromJson(json);
}

@freezed
class Result with _$Result {
  const factory Result({

    required String name,
    required DateTime released,

    required String background_image,
    required dynamic metacritic,

  }) = _Result;

  factory Result.fromJson(Map<String, dynamic> json) => _$ResultFromJson(json);
}

