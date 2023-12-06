import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/services/list_services.dart';
import 'package:gamechallange/data/models/games_response.dart';

import '../../core/error.dart';
import '../../core/services/dio_client.dart';
import '../../domain/usecase/game_usecase.dart';


abstract class GameRemoteDatasource {
  Future<Either<Failure, GamesResponse>> games(GameParams gameParams);
}

class GameRemoteDatasourceImpl implements GameRemoteDatasource {
  final DioClient _client;

  GameRemoteDatasourceImpl(this._client);

  @override
  Future<Either<Failure, GamesResponse>> games(GameParams gameParams) async {
    final response = await _client.getRequest(
      ListServices.games,
      queryParameters: gameParams.toJson(),
      converter: (response) =>
          GamesResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }
}
