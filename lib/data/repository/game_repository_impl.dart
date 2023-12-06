import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/repository/game_repository.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';

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
        if (gameResponse.results.isEmpty ?? true) {
          return Left(NoDataFailure());
        }
        return Right(gameResponse);
      },
    );
  }
}
