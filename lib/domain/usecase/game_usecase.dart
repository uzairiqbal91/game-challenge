import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/constants/app_constatns.dart';
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
    @Default(ApiStrings.defaultPage) int page,
    @Default(ApiStrings.defaultPageSize) int page_size,
    @Default(ApiStrings.defaultPlatform) int platforms,
    @Default(ApiStrings.defaultDates) String dates,
    @Default(ApiStrings.defaultOrdering) String ordering,
    @Default('686b03ffc0154abb837a21404851f3a7') String key,

  }) = _GameParams;

  factory GameParams.fromJson(Map<String, dynamic> json) =>
      _$GameParamsFromJson(json);
}