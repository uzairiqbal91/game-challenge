import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/repository/game_repository.dart';

import '../../../core/error.dart';
import '../../../core/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_detail_usecase.freezed.dart';
part 'game_detail_usecase.g.dart';

class GameDetailUseCase extends UseCase<GamesDetailResponse, GameDetailParams> {
  final GameRepository _repo;

  GameDetailUseCase(this._repo);

  @override
  Future<Either<Failure, GamesDetailResponse>> call(GameDetailParams params) =>
  _repo.gameDetailResponse(params);
}

@freezed
class GameDetailParams with _$GameDetailParams {
  const factory GameDetailParams({
    @Default(ApiStrings.defaultId) int id,
    @Default('') String key,

  }) = _GameDetailParams;

  factory GameDetailParams.fromJson(Map<String, dynamic> json) =>
      _$GameDetailParamsFromJson(json);
}