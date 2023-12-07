import 'package:dartz/dartz.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';

import '../../core/error.dart';
import '../../data/models/games_response.dart';

abstract class GameRepository {
  Future<Either<Failure, GamesResponse>> gameResponse(GameParams gameParams);
  Future<Either<Failure, GamesDetailResponse>> gameDetailResponse(GameDetailParams gameDetailParams);
}