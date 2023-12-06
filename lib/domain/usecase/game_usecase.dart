import 'package:dartz/dartz.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/repository/game_repository.dart';

import '../../core/error.dart';
import '../../core/usecase.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_usecase.freezed.dart';
part 'game_usecase.g.dart';

class GameUseCase extends UseCase<GamesResponse, GameParams> {
  final GameRepository _repo;

  GameUseCase(this._repo);

  @override
  Future<Either<Failure, GamesResponse>> call(GameParams params) =>
      _repo.gameResponse(params);
}



@freezed
class GameParams with _$GameParams {
  const factory GameParams({
    @Default(1) int page,
    @Default(20) int page_size,
    @Default(187) int platforms,
    @Default('2022-12-06,2023-12-06') String dates,
    @Default('-released') String ordering,
    @Default('02ef6ba5d13444ee86bad607e8bce3f4') String key,

  }) = _GameParams;

  factory GameParams.fromJson(Map<String, dynamic> json) =>
      _$GameParamsFromJson(json);
}