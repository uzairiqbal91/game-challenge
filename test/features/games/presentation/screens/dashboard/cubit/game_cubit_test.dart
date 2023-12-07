import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../helpers/json_reader.dart';
import '../../../../../../helpers/paths.dart';
import '../../../../../../helpers/test_mock.mocks.dart';



void main() {
  late GameCubit gameCubit;
  late MockGameUseCase mockGameUseCase;
  late GamesResponse gamesResponse;

  const dummyGameRequest1 = GameParams();
  const dummyGameRequest2 = GameParams(page: 2);
  const errorMessage = "";

  /// Initialize data
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await serviceLocator(isUnitTest: true);

    gamesResponse = GamesResponse.fromJson(
      json.decode(jsonReader(successGamePath)) as Map<String, dynamic>,
    );
    mockGameUseCase = MockGameUseCase();
    gameCubit = GameCubit(mockGameUseCase);
  });

  /// Dispose bloc
  tearDown(() {
    gameCubit.close();
  });

  ///  Initial data should be loading
  test("Initial data should be GameStatus.loading", () {
    expect(gameCubit.state, const GameState.loading());
  });

  blocTest<GameCubit, GameState>(
    "When the repository successfully retrieves data, the GameState should be returned, and the loading indicator should only be displayed when requesting page 1",
    build: () {
      when(mockGameUseCase.call(dummyGameRequest1))
          .thenAnswer((_) async => Right(gamesResponse));

      return gameCubit;
    },
    act: (GameCubit gameCubit) => gameCubit.fetchGames(dummyGameRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const GameState.loading(),
      GameState.success(gamesResponse),
    ],
  );

  blocTest<GameCubit, GameState>(
    "When requesting page 2, the isLoading operation should not be executed",
    build: () {
      when(mockGameUseCase.call(dummyGameRequest2))
          .thenAnswer((_) async => Right(gamesResponse));

      return gameCubit;
    },
    act: (GameCubit gameCubit) => gameCubit.fetchGames(dummyGameRequest2),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      GameState.success(gamesResponse),
    ],
  );


  blocTest<GameCubit, GameState>(
    "When failed to get data from server",
    build: () {
      when(
        mockGameUseCase.call(dummyGameRequest1),
      ).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return gameCubit;
    },
    act: (GameCubit gameCubit) => gameCubit.fetchGames(dummyGameRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => const [
      GameState.loading(),
      GameState.failure(errorMessage),
    ],
  );



  blocTest<GameCubit, GameState>(
    "When no data from server",
    build: () {
      when(mockGameUseCase.call(dummyGameRequest2),)
          .thenAnswer((_) async => Left(NoDataFailure()));

      return gameCubit;
    },
    act: (GameCubit gameCubit) => gameCubit.fetchGames(dummyGameRequest2),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const GameState.empty(),
    ],
  );



  blocTest<GameCubit, GameState>(
    "When request refreshGames",
    build: () {
      when(mockGameUseCase.call(dummyGameRequest1))
          .thenAnswer((_) async => Right(gamesResponse));

      return gameCubit;
    },
    act: (GameCubit gameCubit) => gameCubit.refreshGames(dummyGameRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const GameState.loading(),
      GameState.success(gamesResponse),
    ],
  );
}
