import 'dart:convert';

import 'package:dartz/dartz.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';

import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/data/repository/game_repository_impl.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';
import 'package:mockito/mockito.dart';

import '../../../helpers/json_reader.dart';
import '../../../helpers/paths.dart';
import '../../../helpers/test_mock.mocks.dart';

void main() {
  late MockGameRemoteDatasource mockGameRemoteDatasource;
  late GameRepositoryImpl gameRepositoryImpl;
  late GamesResponse gamesResponse;
  late GamesDetailResponse gamesDetailResponse;

  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await serviceLocator(
      isUnitTest: true,
    );
    mockGameRemoteDatasource = MockGameRemoteDatasource();
    gameRepositoryImpl = GameRepositoryImpl(mockGameRemoteDatasource);
    gamesResponse = GamesResponse.fromJson(
      json.decode(jsonReader(successGamePath)) as Map<String, dynamic>,
    );
    gamesDetailResponse = GamesDetailResponse.fromJson(
      json.decode(jsonReader(successGameDetailPath)) as Map<String, dynamic>,
    );
  });

  group("games", () {
    const gameParams = GameParams();
    const gameParamsEmpty = GameParams(page: 3);

    test('should return list game when call data is successful', () async {
      // arrange
      when(mockGameRemoteDatasource.games(gameParams)).thenAnswer(
        (_) async => Right(
          GamesResponse.fromJson(
            json.decode(jsonReader(successGamePath)) as Map<String, dynamic>,
          ),
        ),
      );

      // act
      final result = await gameRepositoryImpl.gameResponse(gameParams);

      // assert
      verify(mockGameRemoteDatasource.games(gameParams));
      expect(result, equals(Right(gamesResponse)));
    });

    test(
      'should return empty list game when call data is successful',
      () async {
        // arrange
        when(mockGameRemoteDatasource.games(gameParamsEmpty)).thenAnswer(
          (_) async => Left(NoDataFailure()),
        );

        // act
        final result = await gameRepositoryImpl.gameResponse(gameParamsEmpty);

        // assert
        verify(mockGameRemoteDatasource.games(gameParamsEmpty));
        expect(result, equals(Left(NoDataFailure())));
      },
    );

    test(
      'should return server failure when call data is unsuccessful',
      () async {
        // arrange
        when(mockGameRemoteDatasource.games(gameParams))
            .thenAnswer((_) async => const Left(ServerFailure('')));

        // act
        final result = await gameRepositoryImpl.gameResponse(gameParams);

        // assert
        verify(mockGameRemoteDatasource.games(gameParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );
  });
  group("game detail", () {
    const gameParams = GameDetailParams();
    const gameParamsEmpty = GameDetailParams(id: 100000000);

    test('should return game when call data is successful', () async {
      // arrange
      when(mockGameRemoteDatasource.gameDetail(gameParams)).thenAnswer(
            (_) async => Right(
          GamesDetailResponse.fromJson(
            json.decode(jsonReader(successGameDetailPath)) as Map<String, dynamic>,
          ),
        ),
      );

      // act
      final result = await gameRepositoryImpl.gameDetailResponse(gameParams);

      // assert
      verify(mockGameRemoteDatasource.gameDetail(gameParams));
      expect(result, equals(Right(gamesDetailResponse)));
    });


    //
    test(
      'should return server failure when call data is unsuccessful',
          () async {
        // arrange
        when(mockGameRemoteDatasource.gameDetail(gameParams))
            .thenAnswer((_) async => const Left(ServerFailure('')));

        // act
        final result = await gameRepositoryImpl.gameDetailResponse(gameParams);

        // assert
        verify(mockGameRemoteDatasource.gameDetail(gameParams));
        expect(result, equals(const Left(ServerFailure(''))));
      },
    );
  });
}
