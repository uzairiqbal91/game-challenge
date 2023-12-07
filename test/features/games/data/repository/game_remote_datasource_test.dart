import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/core/helper/common.dart';
import 'package:gamechallange/core/services/dio_client.dart';
import 'package:gamechallange/core/services/list_services.dart';
import 'package:gamechallange/data/datasources/game_remote_datasource.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';
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

  group('game detail', () {
    const gameDetailParams = GameDetailParams();
    final gameDetailModel = GamesDetailResponse.fromJson(
      json.decode(jsonReader(successGameDetailPath)) as Map<String, dynamic>,
    );
    // final gameEmptyModel = GamesDetailResponse.fromJson(
    //   json.decode(jsonReader(emptyDetailGamePath)) as Map<String, dynamic>,
    // );

    test(
      'should return game success model when response code is 200',
      () async {
        /// arrange
        dioAdapter.onGet(
          '${ListServices.games}/${437049}',
          (server) => server.reply(
            200,
            json.decode(jsonReader(successGameDetailPath)),
          ),
          queryParameters: {'key': gameDetailParams.key},
        );

        /// act
        final result = await dataSource.gameDetail(gameDetailParams);

        /// assert
        result.fold(
          (l) => expect(l, isA<ServerFailure>()),
          (r) => expect(r, gameDetailModel),
        );
      },
    );

    test(
      'should return game unsuccessful model when response code is 400',
          () async {
        /// arrange
            dioAdapter.onGet(
              '${ListServices.games}/${437049}',
                  (server) => server.reply(
                    400,
                json.decode(jsonReader(successGameDetailPath)),
              ),
              queryParameters: {'key': gameDetailParams.key},
            );

        /// act
        final result = await dataSource.gameDetail(gameDetailParams);

        /// assert
        result.fold(
              (l) => expect(l, isA<ServerFailure>()),
              (r) => expect(r, null),
        );
      },
    );
    
  });
}
