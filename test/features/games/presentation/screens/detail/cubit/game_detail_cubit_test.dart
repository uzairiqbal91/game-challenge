import 'dart:convert';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:gamechallange/core/di/di.dart';
import 'package:gamechallange/core/error.dart';
import 'package:gamechallange/core/helper/common.dart';
import 'package:gamechallange/data/models/game_detail_response.dart';
import 'package:gamechallange/data/models/games_response.dart';
import 'package:gamechallange/domain/usecase/dashboard/game_usecase.dart';
import 'package:gamechallange/domain/usecase/detail/game_detail_usecase.dart';
import 'package:gamechallange/presentation/screens/dashboard/cubit/game_cubit.dart';
import 'package:gamechallange/presentation/screens/detail/cubit/game_detail_cubit.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import '../../../../../../helpers/json_reader.dart';
import '../../../../../../helpers/paths.dart';
import '../../../../../../helpers/test_mock.mocks.dart';

void main() {
  late GameDetailCubit gameDetailCubit;
  late MockGameDetailUseCase mockGameDetailUseCase;
  late GamesDetailResponse gamesDetailResponse;

  late GameDetailParams dummyGameRequest1 ;
  late GameDetailParams dummyGameRequest2 ;
  const errorMessage = "";

  /// Initialize data
  setUp(() async {
    TestWidgetsFlutterBinding.ensureInitialized();

    await dotenv.load(fileName: "assets/.env");
    await serviceLocator(isUnitTest: true);

    gamesDetailResponse = GamesDetailResponse.fromJson(
      json.decode(jsonReader(successGameDetailPath)) as Map<String, dynamic>,
    );
    mockGameDetailUseCase = MockGameDetailUseCase();
    gameDetailCubit = GameDetailCubit(mockGameDetailUseCase);
    dummyGameRequest1 = GameDetailParams(key: getApiKey);
    dummyGameRequest2 = GameDetailParams(id: 100000,key: getApiKey);
  });

  /// Dispose bloc
  tearDown(() {
    gameDetailCubit.close();
  });

  ///  Initial data should be loading
  test("Initial data should be GameStatus.loading", () {
    expect(gameDetailCubit.state, const GameDetailState.loading());
  });

  blocTest<GameDetailCubit, GameDetailState>(
    "When the repository successfully retrieves data, the GameState should be returned, and the loading indicator should only be displayed ",
    build: () {
      when(mockGameDetailUseCase.call(dummyGameRequest1))
          .thenAnswer((_) async => Right(gamesDetailResponse));

      return gameDetailCubit;
    },
    act: (GameDetailCubit gameCubit) =>
        gameCubit.fetchGameDetail(dummyGameRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      GameDetailState.success(gamesDetailResponse),
    ],
  );

  blocTest<GameDetailCubit, GameDetailState>(
    "When failed to get data from server",
    build: () {
      when(
        mockGameDetailUseCase.call(dummyGameRequest1),
      ).thenAnswer((_) async => const Left(ServerFailure(errorMessage)));

      return gameDetailCubit;
    },
    act: (GameDetailCubit gameCubit) =>
        gameCubit.fetchGameDetail(dummyGameRequest1),
    wait: const Duration(milliseconds: 100),
    expect: () => const [
      GameDetailState.failure(errorMessage),
    ],
  );

  blocTest<GameDetailCubit, GameDetailState>(
    "When no data from server",
    build: () {
      when(
        mockGameDetailUseCase.call(dummyGameRequest2),
      ).thenAnswer((_) async => Left(NoDataFailure()));

      return gameDetailCubit;
    },
    act: (GameDetailCubit gameCubit) =>
        gameCubit.fetchGameDetail(dummyGameRequest2),
    wait: const Duration(milliseconds: 100),
    expect: () => [
      const GameDetailState.empty(),
    ],
  );
}
