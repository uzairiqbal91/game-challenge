
import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/core/services/dio_client.dart';
import 'package:gamechallange/core/services/list_services.dart';
import 'package:gamechallange/data/datasources/game_remote_datasource.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import '../../../../helpers/json_reader.dart';
import '../../../../helpers/paths.dart';

void main() {
  late DioAdapter dioAdapter;
  late GameRemoteDatasourceImpl dataSource;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await serviceLocator(
      isUnitTest: true,
    );
    dioAdapter = DioAdapter(dio: sl<DioClient>().dio);
    dataSource = GameRemoteDatasourceImpl(sl<DioClient>());
  });

  group('games', () {
    const gameParams = GameParams();
    final gamesModel = GamesResponse.fromJson(
      json.decode(jsonReader(successGamePath)) as Map<String, dynamic>,
    );
    final gameEmptyModel = GamesResponse.fromJson(
      json.decode(jsonReader(emptyGamePath)) as Map<String, dynamic>,
    );

    test(
      'should return list game success model when response code is 200',
          () async {
        /// arrange
        dioAdapter.onGet(
          ListServices.games,
              (server) => server.reply(
            200,
            json.decode(jsonReader(successGamePath)),
          ),
          queryParameters: gameParams.toJson(),
        );

        /// act
        final result = await dataSource.games(gameParams);

        /// assert
        result.fold(
              (l) => expect(l, null),
              (r) => expect(r, gamesModel),
        );
      },
    );


    test(
      'should return game unsuccessful model when response code is 400',
          () async {
        /// arrange
        dioAdapter.onGet(
          ListServices.games,
              (server) => server.reply(
            400,
            json.decode(jsonReader(successGamePath)),
          ),
          queryParameters: gameParams.toJson(),
        );

        /// act
        final result = await dataSource.games(gameParams);

        /// assert
        result.fold(
              (l) => expect(l, isA<ServerFailure>()),
              (r) => expect(r, null),
        );
      },
    );


    test(
      'should return empty list game success model when response code is 200',
          () async {
        /// arrange
        dioAdapter.onGet(
          ListServices.games,
              (server) => server.reply(
            200,
            json.decode(jsonReader(emptyGamePath)),
          ),
          queryParameters: gameParams.toJson(),
        );

        /// act
        final result = await dataSource.games(gameParams);

        /// assert
        result.fold(
              (l) => expect(l, null),
              (r) => expect(r, gameEmptyModel),
        );
      },
    );






  });
}