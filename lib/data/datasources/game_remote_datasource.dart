import 'package:dartz/dartz.dart';
import 'package:gamechallange/core/services/list_services.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';

import '../../core/error.dart';
import '../../core/services/dio_client.dart';
import '../../domain/usecase/dashboard/game_usecase.dart';


abstract class GameRemoteDatasource {
  Future<Either<Failure, GamesResponse>> games(GameParams gameParams);
  Future<Either<Failure, GamesDetailResponse>> gameDetail(GameDetailParams gameParams);
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

  @override
  Future<Either<Failure, GamesDetailResponse>> gameDetail(GameDetailParams gameParams) async {
    // TODO: implement gameDetail
    final response = await _client.getRequest(
      '${ListServices.games}/${gameParams.id}',
      queryParameters: {'key': gameParams.key},
      converter: (response) =>
          GamesDetailResponse.fromJson(response as Map<String, dynamic>),
    );

    return response;
  }


}
