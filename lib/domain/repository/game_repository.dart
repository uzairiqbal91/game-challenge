import 'package:dartz/dartz.dart';
import 'package:gamechallange/domain/usecase/game_usecase.dart';

import '../../core/error.dart';
import '../../data/models/games_response.dart';

abstract class GameRepository {
  Future<Either<Failure, GamesResponse>> gameResponse(GameParams usersParams);
}