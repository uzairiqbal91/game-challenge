import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/repository/game_repository.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';

import '../datasources/game_remote_datasource.dart';

class GameRepositoryImpl implements GameRepository {
  /// Data Source
  final GameRemoteDatasource gameRemoteDatasource;

  const GameRepositoryImpl(this.gameRemoteDatasource);



  @override
  Future<Either<Failure, GamesResponse>> gameResponse(GameParams gameParams) async {
    // TODO: implement gameResponse
    final response = await gameRemoteDatasource.games(gameParams);

    return response.fold(
          (failure) => Left(failure),
          (gameResponse) {
        if (gameResponse.results.isEmpty) {
          return Left(NoDataFailure());
        }
        return Right(gameResponse);
      },
    );
  }

  @override
  Future<Either<Failure, GamesDetailResponse>> gameDetailResponse(GameDetailParams gameDetailParams) async {
    final response = await gameRemoteDatasource.gameDetail(gameDetailParams);

    return response.fold(
          (failure) => Left(failure),
          (gameDetailResponse) {
        if (gameDetailResponse == null) {
          return Left(NoDataFailure());
        }
        return Right(gameDetailResponse);
      },
    );
  }
}
